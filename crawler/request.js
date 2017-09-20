/*
 * @Author            : cnwanq
 * @Date              : 2017-09-20 21: 25: 56
 * @Last Modified by  : cnwanq
 * @Last Modified time: 2017-09-20 21: 30: 01
 */

var http = require('http');
var url  = require('url');

var request = function (reqUrl, data, cb, headers) {
    var dataType = typeof data

    if (dataType == 'function') {
        headers = cb
        cb      = data
        rawData = null
    } else if (dataType == 'object') {
        rawData = JSON.stringify(data)
    } else {
        rawData = data
    }

    var urlObj = url.parse(reqUrl)

    var options = {
        hostname: urlObj.hostname,
        port    : urlObj.port,
        path    : urlObj.pathname,
        method  : rawData ? 'post': 'get'
    }

    headers && (options.headers = headers)


    var req = http.request(options, function (res) {
        var receives = []

        if (res.statusCode !== 200) {
            cb && cb(new Error('Request Failed. Status Code: ' + res.statusCode + ' ' + reqUrl))
            return
        }

        res.on('data', function (chunk) {
            receives.push(chunk)
        })

        res.on('end', function () {
            var resData = Buffer.concat(receives).toString()
            try {
                resData = JSON.parse(resData)
            } catch (e) {}

            cb && cb(null, res, resData)
        })
    })

    req.on('error', function (e) {
        cb && cb(e)
    })

    rawData && req.write(rawData)

    req.end()
}

module.exports = request