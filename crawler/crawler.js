/*
 * @Author            : cnwanq
 * @Date              : 2017-09-24 09: 43: 59
 * @Last Modified by  : cnwanq
 * @Last Modified time: 2017-09-25 14: 02: 23
 */
var request    = require('./request');
var parser     = require('./parser');
var Job        = require('./job');
var EventProxy = require("eventproxy");

ep = new EventProxy();

crawler = {
    jobs   : [],   // 任务表
    list   : [],   // 请求队列
    visited: [],   // 已经请求完成的
    faild  : [],   // 请求失败的

    requestCount   : 0,
    maxRequestCount: 5
};

/**
 * 执行的方法
 */
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

/**
 * 移除任务的方法
 */
crawler.removeJob = function (job) {
    let _job = job;

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
        crawler.jobs.splice(jobIndex, 1);
        crawler.list.splice(listIndex, 1);
    }
}


/**
 * 监听 run 的事件 - 开始处理job
 */
ep.on('run', function (job) {

    console.log('emit run');
    let _job = Job.copy(job);

    crawler.jobs.push(_job);
    crawler.excute();
});

/**
 * 监听 data 的事件 - 请求完成
 */
ep.on('data', function (job) {
    console.log('emit data');
    let _job = job;
    crawler.requestCount--;
    crawler.removeJob(_job);
    
    crawler.visited.push(job.url);
    crawler.excute();

});

/**
 * 监听 err 的事件 - 请求异常
 */
ep.on('err', function (job) {
    console.log('emit err');
    let _job = job;
    crawler.requestCount--;
    crawler.removeJob(_job);

    crawler.faild.push(_job.url);
    crawler.excute();
});

/**
 * Crawler run 方法
 */
crawler.run = function (job) {
    let _job = job;
    var date = new Date();
    console.log('crawler run '+ job.url + ' '+ date);
    // 防止重复
    
    // console.log('防止重复 - 1 '+crawler.visited.indexOf(_job.url));
    // console.log('防止重复 - 2 '+crawler.faild.indexOf(_job.url));

    if (_job && _job.url && (crawler.visited.indexOf(_job.url) < 0 && crawler.faild.indexOf(_job.url) < 0)) {

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

        ep.emit('data', _job);
        
        if (data) {
            // 请求到的网页
            console.log("collect parser _job" + job.url);
            var result = _job.parser(data);

            if (result && _job.nextJob && _job.nextJobCrawler) {
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