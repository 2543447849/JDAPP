window.onload = function () {
    var oUl = document.getElementById('row6');
    var storeRank = document.getElementById('storeRank');
    var header_input = document.getElementById('header_input');
    var header2_bian = document.getElementById('header2_bian');
    var jiantou = document.getElementById('jiantou');
    var clientH = document.documentElement.clientHeight || document.body.clientHeight;
    var clientW = document.documentElement.clientWidth || document.body.clientWidth;
    var count = 3;//用来计数 请求完整数据时候

    jiantou.onclick = function () {
        function huiqu() {
            document.body.scrollTop -= 10;
            var i = document.body.scrollTop;
            if (i <= 0) {
                document.body.scrollTop = 0;
                clearInterval(time1)
            }
        }

        var time1 = setInterval(huiqu, 1);
    };


    window.onscroll = function () {
        var scrollH = document.documentElement.scrollHeight || document.body.scrollHeight;
        var scrollT = document.documentElement.scrollTop || document.body.scrollTop;
        if (scrollT > 560) {
            jiantou.style.opacity = 1;
        } else {
            jiantou.style.opacity = 0;
        }
        header_input.style.left = scrollT * 1.8 + 'px';
        header_input.parentNode.style.opacity = 20 / scrollT;
        header2_bian.style.opacity = scrollT / 154;
        if (scrollT + clientH >= scrollH - 15) {
            $.ajax({
                url: 'php/lianjieData.php',
                data: {
                    a: count,
                    b: count / 1 + 1
                },
                dataType: 'json',
                //result: 请求完成响应的li 数据
                success: function (result) {

                    //读取 html片段 <li><a>{{i.name}}</a></li>
                    $.ajax({
                        url: 'model/liModel.html',
                        //data: html模板
                        success: function (data) {
                            /*
                             * <li><a>{{i.name}}</a></li>
                             * result : [obj ,obj, obj]
                             *
                             *  将 模板 <li><a href='tab_1.html?did={{i.id}}'>{{i.name}}</a></li> 循环三次
                             *  并且将 数组中对象的值替换到 字符串中
                             *
                             *  1. 从模板当中取出需要替换的属性名
                             *  2. 循环三次 同时替换
                             *      遍历 result
                             *          遍历 ks
                             *              result[i][ks[j]]
                             *
                             * */
                            //从模板当中取出需要替换的属性名
                            // ks 存储 所有需要匹配的属性名
                            //newk是ks中每个元素删除{{i.****}}之后留下的****
                            var newk, ks = [];
                            ks = data.match(/\{\{i.(\w+)\}\}/g);
                            //声明模版 和 代表最终语句的变量
                            var htmlModel = data, sumResult = '';
                            //循环改变成想要的语句
                            result.forEach(function (obj) {
                                ks.forEach(function (k) {
                                    newk = k.substring(k.indexOf('{{') + 4, k.indexOf('}}'));
                                    //用obj[newk]替换html模板中对应的数据
                                    //替换 {{i.id}}, {{i.name}}
                                    if (newk == 'store_rank') {
                                        if (obj[newk]) {
                                            var number = obj[newk];
                                            newk = '';
                                            for (var i = 0; i < number; i++) {
                                                newk += '<i></i>';
                                            }
                                            data = data.replace(k, newk);
                                        }
                                    } else if (newk == 'store_i') {
                                        if (obj[newk] == 1) {
                                            newk = '<i></i>';
                                            data = data.replace(k, newk);
                                        } else {
                                            data = data.replace(k, '');
                                        }
                                    } else if (newk == 'store_dada') {
                                        if (obj[newk]) {
                                            data = data.replace(k, '达达专送');
                                        } else {
                                            data = data.replace(k, '');
                                        }
                                    } else if (newk == 'store_activity') {
                                        if (obj[newk]) {
                                            data = data.replace(k, obj[newk]);
                                        } else {
                                            data = data.replace(k, '');
                                        }
                                    } else {
                                        data = data.replace(k, obj[newk]);
                                    }
                                });
                                //将替换好的html 存入变量中, 当循环结束时, 将变量的值赋值到 ul 中
                                sumResult += data;
                                //重新赋值html模板
                                data = htmlModel;
                            });
                            oUl.innerHTML += sumResult;

                        }
                    });
                }
            });
            count += 2;
        }
    }
}
