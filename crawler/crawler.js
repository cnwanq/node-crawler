/*
 * @Author            : cnwanq
 * @Date              : 2017-09-24 09: 43: 59
 * @Last Modified by  : cnwanq
 * @Last Modified time: 2017-09-24 17: 23: 07
 */
var request = require('./request');
var parser  = require('./parser');
var job     = require('./job');

crawler = {
    visited: [],
    faild  : []
};

crawler.run = function (job) {

    // 防止重复
    if(job && job.url && crawler.visited.indexOf(job.url)<0 && crawler.faild.indexOf(job.url)<0){
        if (job.type === 'collect') {
            crawler.collect(job);
        } else if (job.type === 'download') {
            crawler.download(job);
        }
    }
}

// 采集
crawler.collect = function (job) {
    // console.log(job);
    var option = {
        method  : job.method,
        uri     : job.url,
        formData: job.data,
        headers : job.headers
    };

    request(option).then(function (body) {
        // success
        crawler.visited.push(option.uri);
        if (body) {
            // 请求到的网页
            var result = job.parser(body);

            if (result && job.nextJob && job.nextJobCrawler) {
                console.log('job.nextJob');
                job.nextJobCrawler(result, job.nextJob);
            }
        }

    }).catch(function (err) {
        // faild
        crawler.faild.push(option.uri);
        console.log(err);
    });;

}


// 下载
crawler.download = function () {
    console.log('download');
}

module.exports = crawler;