/*
 * @Author            : cnwanq
 * @Date              : 2017-09-20 20: 49: 52
 * @Last Modified by  : cnwanq
 * @Last Modified time: 2017-09-24 00: 40: 29
 */

// var request = require('./crawler/request.js');
var request = require('request-promise');
var cheerio = require('cheerio');
var fs      = require('fs');
var url     = require('url');

// 模拟登录
var options = {
    method  : 'POST',
    uri     : 'https://www.klook.com/web2/login_loginWeb.ajax',
    formData: {
        username  : 'apptest@klook.com',
        password  : 'c9b784dc8cbda5a7d3c0142d7427387c',
        needCookie: 'off',
        currurl   : 'https://www.klook.com/zh-CN/signin'

    },
    headers: {
        /* 'content-type': 'application/x-www-form-urlencoded' */
        'Accept'          : 'application/json, text/javascript, */*; q=0.01',
        'Connection'      : 'keep-alive',
        'Content-Type'    : 'application/x-www-form-urlencoded; charset=UTF-8',
        'Cookie'          : 'optimizelyEndUserId=oeu1501751621351r0.7897034900860325; Hm_lvt_2da8b0153918f569b99ad49ec397b565=1501751628; a98e53615d37a31cc52f76d8ef02a22318bae5df=a02d72ff9b813e6dc62390ede06f48c33475fda1; 6c046e19abae502b6c47ff83a8eb4d8727f7dd4e=5982e935fbcbca0377d8379b; dd898f14bdc9dab95346cf7057db6ffdb10ba1c8=5982e935fbcbca0377d8379a; tag_fok=1505916455000; _vis_opt_exp_10_exclude=1; _vis_opt_exp_9_exclude=1; _vis_opt_exp_8_exclude=1; _vis_opt_exp_7_exclude=1; _vis_opt_exp_6_exclude=1; klk_currency=HKD; _vis_opt_s=2%7C; _vis_opt_test_cookie=1; pnctest=1; KLOOK_CSRF_TOKEN=211dc993-2b7b-4a42-b381-c22ab5802b6a; JSESSIONID=9E59B023CE72F67055CED4E9FB964435; _gat=1; _dc_gtm_UA-86696233-1=1; _gat_UA-86696233-1=1; _gat_UA-54803406-1=1; Hm_lvt_29595a3b8622b5604b8d7d16a27db1f0=1505916456,1506170786; Hm_lpvt_29595a3b8622b5604b8d7d16a27db1f0=1506183180; _pt=5d624e72-f692-4ccf-b558-48136c861eef; klk_lang=zh-CN; mp_c2ca8b423fd75a10792debf44cd6b51a_mixpanel=%7B%22distinct_id%22%3A%20%2215b1f42878f252-0457ddc92a29af-39687b07-fa000-15b1f428793146%22%2C%22__timers%22%3A%20%7B%7D%2C%22%24initial_referrer%22%3A%20%22%24direct%22%2C%22%24initial_referring_domain%22%3A%20%22%24direct%22%2C%22Language%22%3A%20%22zh-CN%22%2C%22Platform%22%3A%20%22Web%22%7D; optimizelySegments=%7B%226247520328%22%3A%22false%22%2C%226245800241%22%3A%22gc%22%2C%226251180312%22%3A%22direct%22%7D; optimizelyBuckets=%7B%7D; _vwo_uuid_v2=6E4FBC6225A958E4C64B22AED5AF8B3D|e80ff936e71f0d126eb3c1bd3d343fa8; set_user_lan_currency=1; _uetsid=_uetd9ac9da1; wcs_bt=s_2cb388a4aa34:1506183189; _ga=GA1.2.896047242.1490878106; _gid=GA1.2.511734682.1506169403; optimizelyPendingLogEvents=%5B%5D; mp_mixpanel__c=2',
        'Currency'        : 'HKD',
        'Host'            : 'www.klook.com',
        'Origin'          : 'https://www.klook.com',
        'Referer'         : 'https://www.klook.com/zh-CN/signin',
        'User-Agent'      : 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36',
        'version'         : '3.1',
        'x-platform'      : 'desktop',
        'X-Requested-With': 'XMLHttpRequest'
    }
};
request(options)
    .then(function (body) {
            // POST succeeded...
            console.log(body);
             
                options     = {
                    method : 'GET',
                    uri    : 'https://www.klook.com/zh-CN/home/',
                    headers: {
                        'Accept'                   : 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8',
                        'Content-Type'             : 'text/html;charset=utf-8',
                        'Accept-Language'          : 'zh-CN,zh;q=0.8',
                        'Connection'               : 'keep-alive',
                        'Cookie'                   : 'optimizelyEndUserId=oeu1501751621351r0.7897034900860325; Hm_lvt_2da8b0153918f569b99ad49ec397b565=1501751628; a98e53615d37a31cc52f76d8ef02a22318bae5df=a02d72ff9b813e6dc62390ede06f48c33475fda1; 6c046e19abae502b6c47ff83a8eb4d8727f7dd4e=5982e935fbcbca0377d8379b; dd898f14bdc9dab95346cf7057db6ffdb10ba1c8=5982e935fbcbca0377d8379a; tag_fok=1505916455000; _vis_opt_exp_10_exclude=1; _vis_opt_exp_9_exclude=1; _vis_opt_exp_8_exclude=1; _vis_opt_exp_7_exclude=1; _vis_opt_exp_6_exclude=1; klk_currency=HKD; _vis_opt_s=2%7C; _vis_opt_test_cookie=1; pnctest=1; KLOOK_CSRF_TOKEN=211dc993-2b7b-4a42-b381-c22ab5802b6a; JSESSIONID=9E59B023CE72F67055CED4E9FB964435; _gat=1; _dc_gtm_UA-86696233-1=1; _gat_UA-86696233-1=1; _gat_UA-54803406-1=1; Hm_lvt_29595a3b8622b5604b8d7d16a27db1f0=1505916456,1506170786; Hm_lpvt_29595a3b8622b5604b8d7d16a27db1f0=1506183180; _pt=5d624e72-f692-4ccf-b558-48136c861eef; klk_lang=zh-CN; mp_c2ca8b423fd75a10792debf44cd6b51a_mixpanel=%7B%22distinct_id%22%3A%20%2215b1f42878f252-0457ddc92a29af-39687b07-fa000-15b1f428793146%22%2C%22__timers%22%3A%20%7B%7D%2C%22%24initial_referrer%22%3A%20%22%24direct%22%2C%22%24initial_referring_domain%22%3A%20%22%24direct%22%2C%22Language%22%3A%20%22zh-CN%22%2C%22Platform%22%3A%20%22Web%22%7D; optimizelySegments=%7B%226247520328%22%3A%22false%22%2C%226245800241%22%3A%22gc%22%2C%226251180312%22%3A%22direct%22%7D; optimizelyBuckets=%7B%7D; _vwo_uuid_v2=6E4FBC6225A958E4C64B22AED5AF8B3D|e80ff936e71f0d126eb3c1bd3d343fa8; set_user_lan_currency=1; _uetsid=_uetd9ac9da1; wcs_bt=s_2cb388a4aa34:1506183189; _ga=GA1.2.896047242.1490878106; _gid=GA1.2.511734682.1506169403; optimizelyPendingLogEvents=%5B%5D; mp_mixpanel__c=2',
                        'Host'                     : 'www.klook.com',
                        'Referer'                  : 'https://www.klook.com/zh-CN/',
                        'Upgrade-Insecure-Requests': '1',
                        'User-Agent'               : 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36'
                    }
                };
                request(options)
                    .then(function (body) {
                        // console.log(body);
                        fs.writeFile('./data/www.klook.com-home', body, function(err) {
                            if (err) {
                                throw err;
                            }
                        })
                    
                        
                    }).catch(function (err) {
                            // POST failed...
                            console.log(err);
                        
                    });
    }).catch(function (err) {
    // POST failed...
    console.log(err);
});