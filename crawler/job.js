/*
 * @Author            : cnwanq
 * @Date              : 2017-09-24 11: 57: 31
 * @Last Modified by  : cnwanq
 * @Last Modified time: 2017-09-24 17: 14: 09
 */
var Job = function () {
    this.type        = '';
    this.name        = '';
    this.url         = '';
    this.method      = '';
    this.data        = {};
    this.headers     = {};
    this.needLogin   = 0;
    this.oginUrl     = '';
    this.loginHeader = {};

    this.interval = 10;

    this.nextJob,
    this.nextJobCrawler = function(result, job){}

};

Job.prototype.parser = function (data) {};

module.exports = Job;