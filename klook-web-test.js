var crawler = require('./crawler/crawler');
var Job    = require('./crawler/job');
var parser = require('./crawler/parser');

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
            if (href.indexOf(job.url) === 0) {
                hrefs.push(href);
            }
        }
    });

    console.log(hrefs);
    return hrefs;
};

klookHomeJob.nextJobCrawler = function (result, job) {
    var parentJob = this;

    job.name = parentJob.name;

    result.forEach(function (href, index) {
        job.url = href;
        crawler.run(job);
        console.log(index + '-' + href);
    });
};
var klookCityJob = new Job();

klookHomeJob.nextJob = klookCityJob;

klookCityJob.type   = 'collect';
klookCityJob.method = 'GET';

klookCityJob.parser = function (data) {
    var job = this;
};


crawler.run(klookHomeJob);
// crawler.download();