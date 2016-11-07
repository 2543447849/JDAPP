/**
 * Created by luoluo on 2016/10/26.
 */
var oUl = document.getElementById('fenleiUl1');
var lis = oUl.children;
var content = document.getElementById('content');
var scrollW = document.documentElement.scrollWidth || document.body.scrollWidth;
content.style.width = scrollW - 90 + 'px';
oUl.onclick = function (event) {
    content.getElementsByTagName('ul')[0].innerHTML = '';
    var classifyModel = '';
    var e = event || window.event;
    var element = e.target || e.srcElement;
    for (var i = 0; i < lis.length; i++) {
        lis[i].className = '';
    }
    element.className = 'bianhua';
    var bigPartId = element.getAttribute('data_num');

    $.ajax({
        url: '../php/lianjieClassify.php',
        data: {
            listname: bigPartId
        },
        dataType: 'json',
        //result: 请求完成响应的li 数据
        success: function (result) {
            //模版1 表示每个商品的模版
            var arr=result;
            classifyModel += '<li><div>' + arr[0]['middle_name'] + '</div><div class="clearFix">';

            for (var i = 0; i < result.length-1; i++) {
                if (arr[i]['middle_name'] == arr[i + 1]['middle_name']) {
                    classifyModel += "<div> <img src='../img/classify/" + arr[i]['id_img'] + ".jpg'> " +
                        "<p>" + arr[i]['small_name'] + "</p> </div>";
                } else {
                    classifyModel += "<div> <img src='../img/classify/" + arr[i]['id_img'] + ".jpg'> " +
                        "<p>" + arr[i]['small_name'] + "</p> </div>" +
                        "</div><hr></li>";
                    if (i != arr.length - 2) {
                        classifyModel += '<li><div>' + arr[i + 1]['middle_name'] + '</div><div class="clearFix">'
                    }
                }
            }
            classifyModel+="</div><hr></li>";
            content.getElementsByTagName('ul')[0].innerHTML = classifyModel;
        }
    });


    //$.ajax({
    //    url: '../php/lianjieClassify.php',
    //    data: {
    //        listname: biaogename
    //    },
    //    dataType: 'json',
    //    //result: 请求完成响应的li 数据
    //    success: function (result) {
    //        //模版1 表示每个商品的模版
    //        var xunhuanNumber = result[0]['list_number'];
    //        for (var j = 0; j < xunhuanNumber; j++) {
    //            var str = 'list' + (j / 1 + 1) + '_number';
    //            classifyModel += '<li><div>' + result[0]['list' + (j / 1 + 1) + '_name'] + '</div><div class="clearFix">';
    //            for (var i = 0; i < result[0][str]; i++) {
    //                var str2 = str.replace('number', (i + 1) + '_img');
    //                var str3 = str.replace('number', (i + 1) + '_name');
    //                classifyModel += "<div> <img src='../img/classify/" + result[0][str2] + "'> " +
    //                    "<p>" + result[0][str3] + "</p> </div>"
    //            }
    //            classifyModel += ' </div><hr></li>';
    //        }
    //        content.getElementsByTagName('ul')[0].innerHTML = classifyModel;
    //    }
    //});
}