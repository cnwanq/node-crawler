/*
 * @Author            : cnwanq
 * @Date              : 2017-09-24 09: 43: 59
 * @Last Modified by  : cnwanq
 * @Last Modified time: 2017-09-25 10: 21: 51
 */
var request    = require('./request');
var parser     = require('./parser');
var Job        = require('./job');
var EventProxy = require("eventproxy");

ep = new EventProxy();

crawler = {
    jobs   : [],
    visited: [],
    faild  : [],

    requestCount   : 0,
    maxRequestCount: 2
};


crawler.excute = function () {

    if (crawler.requestCount < crawler.maxRequestCount && crawler.jobs.length > 0) {
        crawler.requestCount++;
        
        var job = crawler.jobs[0];
        // console.log('excute '+ JSON.stringify(crawler.jobs));
        // console.log();
        
        if (job.type === 'collect') {
            crawler.collect(job);
        } else if (job.type === 'download') {
            crawler.download(job);
        }
    }
}

crawler.removeJob = function (job) {
    let _job = job;
    // console.log('removeJob ' + job.url);
    // console.log(crawler.jobs.length);
    // console.log(JSON.stringify(crawler));
    let jobIndex = -1;
    for (var index = 0; index < crawler.jobs.length; index++) {
        var __job = crawler.jobs[index];
        if (__job.url == _job.url) {
            jobIndex = index;
            break;
        }
    }
    if (jobIndex >= 0) {
        crawler.jobs.splice(jobIndex, 1);
    }
    // console.log('jobIndex - '+jobIndex);
    // console.log(crawler.jobs.length);
}


ep.on('run', function (job) {

    // console.log('emit run');
    let _job = Job.copy(job);

    crawler.jobs.push(_job);
    console.log('push : '+JSON.stringify(crawler.jobs));
    console.log();
    crawler.excute();

});


ep.on('data', function (job) {
    // console.log('emit data');
    let _job = job;
    crawler.requestCount--;
    crawler.removeJob(_job);
    
    crawler.visited.push(job.url);
    crawler.excute();

});

ep.on('err', function (job) {
    // console.log('emit err');
    let _job = job;
    crawler.requestCount--;
    crawler.removeJob(_job);

    crawler.faild.push(_job.url);
    crawler.excute();
});



crawler.run = function (job) {
    let _job = job;
    console.log('crawler run '+ job.url);
    // 防止重复
    
    // console.log('防止重复 - 1 '+crawler.visited.indexOf(_job.url));
    // console.log('防止重复 - 2 '+crawler.faild.indexOf(_job.url));

    if (_job && _job.url && (crawler.visited.indexOf(_job.url) < 0 && crawler.faild.indexOf(_job.url) < 0)) {
        console.log('crawler run ok');
        // console.log('===run===');
        ep.emit('run', _job);

    } else {
        console.log('crawler 防重： '+ job.url);
    }
}

// 采集
crawler.collect = function (job) {
    let _job   = job;
    var option = {
        method  : _job.method,
        uri     : _job.url,
        formData: _job.data,
        headers : _job.headers
    };

    request(option).then(function (data) {
        
        // success
        // console.log('==data==');
        ep.emit('data', _job);
        
        if (data) {
            // 请求到的网页

            console.log();
            var result = _job.parser(data);
            // console.log('_job.nextJob '+_job.nextJob);
            // console.log('_job.nextJobCrawler '+_job.nextJobCrawler);
            if (result && _job.nextJob && _job.nextJobCrawler) {
                // console.log('nextJobCrawler '+_job.url);

                // var cloneOfjob   = JSON.parse(JSON.stringify(_job.nextJob));
                var cloneJob     = Job.copy(_job.nextJob);
                    _job.nextJob = cloneJob;
                _job.nextJobCrawler(result, cloneJob);
            }
        }

        

    }).catch(function (err) {
        // faild
        ep.emit('err', _job);
        console.log(err);
    });;

}


// 下载
crawler.download = function () {
    console.log('download');
}

module.exports = crawler;