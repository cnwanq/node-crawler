/*
 * @Author            : cnwanq
 * @Date              : 2017-09-20 20: 49: 52
 * @Last Modified by  : cnwanq
 * @Last Modified time: 2017-09-20 21: 44: 52
 */

var request = require('./crawler/request.js');
var fs      = require('fs');
var url     = require('url');


console.info('Hello Node Crawler');

var targetUrl = 'http://www.klook.com';

request(targetUrl, function (err, res, data) {
    var targetUrlObj = url.parse(targetUrl);
    fs.writeFile('./data/'+targetUrlObj.host, data, function(err) {
        if (err) {
            throw err;
        }
    })
})