/*
 * @Author            : cnwanq
 * @Date              : 2017-09-24 11: 57: 31
 * @Last Modified by  : cnwanq
 * @Last Modified time: 2017-09-25 14: 03: 25
 */
var Job = function () {
    this.type        = '';
    this.name        = '';
    this.url         = '';
    this.method      = '';
    this.data        = {};
    this.headers     = {};
    this.needLogin   = 0;
    this.loginUrl    = '';
    this.loginHeader = {};

    this.interval = 10;

    this.nextJob,
    this.nextJobCrawler = function(result, job){}

    Job.parser = function (data) {};

};

/**
 * 克隆方法
 */
Job.copy = function(job) {
    var copyJob             = new Job();
        copyJob.type        = job.type;
        copyJob.name        = job.name;
        copyJob.url         = job.url;
        copyJob.method      = job.method;
        copyJob.data        = job.data;
        copyJob.headers     = job.headers;
        copyJob.needLogin   = job.needLogin;
        copyJob.loginUrl    = job.loginUrl;
        copyJob.loginHeader = job.loginHeader;

        copyJob.interval = job.interval;

        if (job.nextJob) {
            copyJob.nextJob = job.nextJob;
        }
        
        copyJob.nextJobCrawler = job.nextJobCrawler;
        
        copyJob.parser = job.parser;

    return copyJob;
    
};

module.exports = Job;