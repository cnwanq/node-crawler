/*
 * @Author            : cnwanq
 * @Date              : 2017-09-24 09: 43: 59
 * @Last Modified by  : cnwanq
 * @Last Modified time: 2017-09-25 12: 57: 15
 */
var request    = require('./request');
var parser     = require('./parser');
var Job        = require('./job');
var EventProxy = require("eventproxy");

ep = new EventProxy();

crawler = {
    jobs   : [],
    list   : [],
    visited: [],
    faild  : [],

    requestCount   : 0,
    maxRequestCount: 5
};


crawler.excute = function () {
    
    if (crawler.requestCount < crawler.maxRequestCount && crawler.jobs.length > 0) {
        crawler.requestCount++;
        
        console.log('当前并发数：'+crawler.requestCount);
        // 获取没有执行的 job
        var listCount = crawler.list.length;
        
        var excuteJobIndex = 0;
        for (let i=0; i<crawler.jobs.length; i++) {
            var url = crawler.jobs[i].url;
            for (let l=0; l<listCount; l++) {
                if(crawler.list.indexOf(url)<0){
                    excuteJobIndex = i;
                } else {
                    break;
                }
            }
        }

       
        // console.log('listCount - '+listCount);
        var job = crawler.jobs[excuteJobIndex];
        if (crawler.list.indexOf(job.url)>=0) {
            return;
        }
        
        crawler.list[listCount] = job.url;

        var date = new Date();
        console.log('excute call : '+job.url + ' '+date);
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
    let listIndex = -1;
        listIndex = crawler.list.indexOf(_job.url);
    if (jobIndex >= 0) {
        // console.log('remove job url 1 : '+crawler.jobs[jobIndex].url);
        // console.log('remove job url 2 : '+crawler.list[jobIndex]);
        crawler.jobs.splice(jobIndex, 1);
        crawler.list.splice(listIndex, 1);

        // console.log('remove jobs length 1 : '+crawler.jobs.length);
        // console.log('remove list length 2 : '+crawler.list.length);
    }
    // console.log('jobIndex - '+jobIndex);
    // console.log(crawler.jobs.length);
}


ep.on('run', function (job) {

    console.log('emit run');
    let _job = Job.copy(job);

    crawler.jobs.push(_job);
    // console.log('push : '+JSON.stringify(crawler.jobs));
    // console.log();
    crawler.excute();

});


ep.on('data', function (job) {
    console.log('emit data');
    let _job = job;
    crawler.requestCount--;
    crawler.removeJob(_job);
    
    crawler.visited.push(job.url);
    crawler.excute();

});

ep.on('err', function (job) {
    console.log('emit err');
    let _job = job;
    crawler.requestCount--;
    crawler.removeJob(_job);

    crawler.faild.push(_job.url);
    crawler.excute();
});



crawler.run = function (job) {
    let _job = job;
    var date = new Date();
    console.log('crawler run '+ job.url + ' '+ date);
    // 防止重复
    
    // console.log('防止重复 - 1 '+crawler.visited.indexOf(_job.url));
    // console.log('防止重复 - 2 '+crawler.faild.indexOf(_job.url));

    if (_job && _job.url && (crawler.visited.indexOf(_job.url) < 0 && crawler.faild.indexOf(_job.url) < 0)) {
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

            console.log("collect parser _job" + job.url);
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