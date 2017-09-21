/*
 * @Author            : cnwanq
 * @Date              : 2017-09-20 20: 49: 52
 * @Last Modified by  : cnwanq
 * @Last Modified time: 2017-09-21 19: 51: 51
 */

// var request = require('./crawler/request.js');
var request = require('request');
var cheerio = require('cheerio');
var fs      = require('fs');
var url     = require('url');


console.info('Hello Node Crawler');

var targetUrl = 'http://www.klook.com';

request(targetUrl, function (err, res, data) {
    var $          = cheerio.load(data);
    var indexHrefs = new Array();
    
    $("a").each(function(index, element) {
        var href = $(this).attr("href");

        if(href && href.length>0) {
            indexHrefs[indexHrefs.length] = href;
        }
        
    });
    var targetUrlObj = url.parse(targetUrl);
    fs.writeFile('./data/'+targetUrlObj.host+'-allhrefs', indexHrefs.join('\n'), function(err) {
        if (err) {
            throw err;
        }
    })
})