var crawler = require('./crawler/crawler');
var Job    = require('./crawler/job');
var parser = require('./crawler/parser');

var fs  = require('fs');
var url = require('url');

var klookHomeJob = new Job();

klookHomeJob.type   = 'collect';
klookHomeJob.name   = 'klook-web';
klookHomeJob.url    = 'https://www.klook.com';
klookHomeJob.method = 'GET';

klookHomeJob.parser = function (data) {
    var job   = this;
    var hrefs = new Array();
    
    var $ = parser.load(data);
    $("a").each(function (index, element) {
        var href = $(this).attr("href");
        if (href && href.length > 0 && href != 'javascript:;') {

            var prefix = 'http';
            if (href.slice(0, prefix.length) !== prefix) {
                href = job.url + href;
            }
            if (href.slice(href.length - 1) === '/') {
                href = href.slice(0, href.length - 1);
            }
            if (href.indexOf(job.url) === 0) {
                hrefs.push(href);
            }
        }
    });

    var urlObj = url.parse(job.url);
    var host   = urlObj.host;

    fs.writeFile('./data/' + job.name + '/' + host, hrefs, function (err) {
        if (err) {
            throw err;
        }
    });
    // console.log(hrefs);
    return hrefs;
};

klookHomeJob.nextJobCrawler = function (result, job) {
    var parentJob = this;

    job.name    = parentJob.name;
    job.nextJob = null;
    
    result = result.splice(0, 100);
    // result.forEach(function (href, index) {
    //     console.log(href);
    // });
    // console.log('nextJobCrawler : '+result.length);
    result.forEach(function (href, index) {
        job.url = href;
        crawler.run(job);
    });
};

var klookCityJob = new Job();

klookHomeJob.nextJob = klookCityJob;

klookCityJob.type   = 'collect';
klookCityJob.method = 'GET';

klookCityJob.parser = function (data) {

    var job = this;

    var $    = parser.load(data);
    var text = $("h1 b").text();
    console.log(text + "-"+job.url);

    var urlObj = url.parse(job.url);
    var host   = urlObj.host;
    var path   = urlObj.path;

    fs.writeFileSync('./data/' + job.name + '/' + path, text, function (err) {
        if (err) {
            throw err;
        }
    });
};


crawler.run(klookHomeJob);
// crawler.download();