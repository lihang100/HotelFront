<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <link href="css/bootstrap.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="jquery-3.3.1.js"></script>
    <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="layui-v2.4.5/layui/css/layui.css"
          media="all">







    <title></title>
    <style>
        *{ padding: 0px; margin: 0px}
        a{text-decoration: none}

        .d1{height: 80px; border-bottom:1px gray solid; position: relative}
        .d1 span:hover{ cursor: pointer;}
        .i{position: absolute;right: 255px;top: -2px;padding: 3px;border-radius: 5px;background-color: #ad0000  }
        .con li{ float: left;  list-style: none;padding-left: 35px; text-align: center;height:80px;  line-height: 100px;  }
        .con li{cursor:pointer;}
        .con div{ height: 5px;margin-top: 0px;}

        a:hover{cursor:pointer ;}
        .d2{ ;height: 40px; float: right;  margin-top: 5px; margin-right:250px }
        .a{ margin-top: 15px;margin-left: 160px;}
        .a a{color: #646464;}
        .taskbar{width: 110px;height: 500px;margin-left: 160px;margin-top: 30px;}
        .taskbar p{ font-size: 18px ; color: #3c3c3c  }
        .dian{height: 38px;float: left; margin-top: 40px}
        .pp{ float: left}
        .pp a{text-decoration: none;color: #646464  }
        .pp a:visited{color: red}


        .xinxi ul div{float: left;}
        .xinxi ul{margin-top: 20px;margin-left: 80px}

        .xinxi a{ display:block;width: 170px;height:45px;background-color: #b01e21;border-radius: 10px; text-align: center;
            line-height: 45px;font-size: 20px;font-weight: 800;color: whitesmoke;cursor: pointer;margin-top: 40px;margin-left: 90px;  }
        .xinxi a:hover{background-color: rgba(176, 30, 33, 0.84);text-decoration: none  }
        .xinxi span{margin-left: 20px;opacity: 0; color: red}

       .uls li{
           margin-top: 20px;
       }
        .wei {
            margin-left: -200px;
            width: 1600px;
            height: 100px;
            margin-top: 95px;
            padding-top: 20px;
            background-color: rgba(227, 227, 227, 0.54);
            border-top: 1px rgba(184, 184, 184, 0.66) solid;
        }

        .wei a {
            margin-left: 60px;
            text-decoration: none;
            color: #430752
        }

        .wei p {
            text-align: center;
            margin-top: 20px;
            color: #430752
        }
        .li{margin-top: 10px;width: 90%;height: 120px;border: 1px solid gray}
        .img{width: 60px;height:60px;border-radius: 50%;}
        .date{margin-left: 625px;}
        .pingname{margin-left: 20px}
        .text{width: 800px;margin-left: 50px}



    </style>

</head>
<body>

<div class="d1">

    <ul class="con">
        <li style="font-size: 22px; margin-left: 130px">成 城 的 爱 巢</li>
        <li> <div></div><span>酒店预订</span></li>
        <li> <div></div><span>企业客户预定</span></li>
        <li> <div></div><span>优惠促销</span></li>
        <li> <div></div><span>家宾会</span></li>
        <li> <div></div><span>积分商城</span></li>
        <li> <div></div><span>关于度假村</span></li>
    </ul>
    <span class="glyphicon glyphicon-heart" title="收藏" style="color: red; font-size: 20px;margin-left: 265px;"></span>
    <span class="glyphicon glyphicon-qrcode" style="font-size: 20px;margin-left: 10px"></span>
    <div class="i"  >
        <a style="text-decoration: none;color: white">English</a>
    </div>

    <div class="d2">
        <span style="font-size: 20px;top: 5px" class="glyphicon glyphicon-user"></span>
        <a style="text-decoration: none; line-height:40px;color: rgba(93, 46, 20, 0.92)">&nbsp;如来啊啊&nbsp;</a>
        <span>&nbsp;|</span>
        <a style="text-decoration: none;color: rgba(93, 46, 20, 0.92)"> &nbsp;退出</a>


    </div>
</div>

<div class="a">
    <a style="float: left">当前位置 :&nbsp;</a>
    <a >&nbsp;首页</a>
    <span class="glyphicon glyphicon-menu-right"></span>
    <a >酒店评论</a>

</div>

<div class="taskbar">
    <span style="font-size: 22px">我的酒店</span>
    <div class="dian" style="margin-top: 30px;">
        <p>订单中心<span class="glyphicon glyphicon-menu-down" style="padding-left: 10px;color: #985f0d;font-size: 15px"></span></p>
    </div >
    <div class="pp">
        <a   class="bb">我的订单</a><br/>
    </div>
    <div class="dian">
        <p>我的账户<span class="glyphicon glyphicon-menu-down" style="padding-left: 10px;color: #985f0d;font-size: 15px"></span></p>
    </div>
    <div class="pp">
        <a > 我的积分</a>
    </div>
    <div class="dian">
        <p>个人中心<span class="glyphicon glyphicon-menu-down" style="padding-left: 10px;color: #985f0d;font-size: 15px"></span></p>
    </div>
    <div class="pp">
        <a >我的信息</a><br/>
        <a> 我的点评</a>
    </div>
    <div class="dian">
        <p>常用信息<span class="glyphicon glyphicon-menu-down" style="padding-left: 10px;color: #985f0d;font-size: 15px"></span></p>
    </div>
    <div class="pp">
        <a >收藏酒店</a>
    </div>

    <div style="width: 1000px;margin-left: 200px;margin-top: -50px">
        <ul>
            <li class="li">
                <img src="img/t1.png" class="img"/><span class="pingname" >name;;;;;;;;;</span>
                <span class="date" >2019-4-23</span>
                <div class="text" ><span>嵌套的路由/视图表模块化的、基于组件的路由配置路由参数、查询、通配符基于 Vue.js 过渡系统的视图过渡效果细粒度的导航控制
</span></div>


            </li>
            <li  class="li">

                <img src="img/t1.png" class="img"/>


            </li>

            <li  class="li">
                <img src="img/t1.png" class="img"/>
            </li>
            <li class="li">
                <img src="img/t1.png" class="img"/>

            </li>

        </ul>

    </div>
    <div style="width:120px ;margin-left:600px"><a >上一页 </a><span > 1/20 </span><a > 下一页</a></div>
    <div style="width: 100px;margin-left: 195px;font-size: 25px">评论</div>
    <div style="width: 1000px;height: 150px;margin-left: 190px">
        <textarea  style="width: 90%;height: 100%;padding-bottom: 110px;margin-left: 10px"></textarea>
    </div>

    <button style="width: 150px;margin-left:950px ;
                height: 35px;
                background-color: #009966;
                color: white;
                font-size: 17px;
                border-radius: 8px;
                line-height: 10px;
                cursor: pointer;
                margin-top: 10px;
                ">发表</button>

    <div class="wei">
        <div>
            <a style="margin-left: 530px;">酒店介绍</a> <a>酒店加盟</a> <a>职位招聘</a> <a>意见反馈</a>
            <a>联系我们</a>
        </div>
        <p>沪ICP备12041475|@ChengCheng All Rights reservrd.城成酒店管理有限公司</p>
    </div>




    <script src="jquery-3.3.1.js"></script>
    <script src="layui-v2.4.5/layui/layui.js" charset="utf-8"></script>
    <script>


        layui.use('laydate', function() {
            var laydate = layui.laydate;
            laydate.render({
                elem: '#test1'
            });
            laydate.render({
                elem: '#test2'

            });

        });

        $(".shou").click(function(){
            $(this).css("color","#a60000");
            alert("收藏成功")
        });

        $(".con span").mouseover(function(){
            $(this).siblings("div").css("background-color","#b01e21")
        });
        $(".con span").mouseout(function(){
            $(this).siblings("div").css("background-color","")
        });
        $(".pass").mouseover(function(){
            $(this).css("background-color","#90704D");
            $(this).children().css("color","white")
        });
        $(".pass").mouseout(function(){
            $(this).css("background-color","");
            $(this).children().css("color","#90704D")
        });
        $(".noe1").hide();
        $("#b").click(function(){
            var text=  $("#b").text();
            if(text=="编辑"){
                $(".read").removeAttr("readOnly").css("border","1px solid gray").css("outline","gray none thick");
                var a=  $("#b").text("保存");
                $(".read1").removeClass("read1");
                $("reaa").removeClass("read1");
                $("reaa1").removeClass("read1");
                $("#a").attr('id','test1');
                $(".born").hide();
                $(".noe1").show();



            }else if( text=="保存"){
                var userlist =  $("#userform").serializeArray();
                console.log(userlist);



                var phone=/^1[3458]\d{9} $/;
                var text;
                $(".noe1").hide();
                $(".born").show();
                for(var i=0;i<4;i++){
                    text=$(".ca:eq("+i+")").val();
                    if(text==""||text==null){
                        $(".ca:eq("+i+")").siblings("span").css("opacity","1");
                        return false;
                    }else{$(".ca:eq("+i+")").siblings("span").css("opacity","0");
                    }
                }

                $(".read").css("border","none").css("outline" ,"none").attr("readOnly"," ");
                var a=  $("#b").text("编辑");
                var nv =$(".nv").is(":checked");
                var nan =$(".nan").is(":checked");
                if(nv){
                    $("nv").attr("checked","checked");
                    $("nan").removeAttr("checked");
                    $(".nan").addClass("read1");
                    $(".nv").addClass("read1");
                    $(".reaa").addClass("read1");
                    $(".reaa1").removeClass("read1")
                }else if(nan){
                    $("nan").attr("checked","checked");
                    $("nv").removeAttr("checked");
                    $(".nan").addClass("read1");
                    $(".nv").addClass("read1");
                    $(".reaa1").addClass("read1");
                    $(".reaa").removeClass("read1")


                }
            }

        })


        //removeClass("read").addClass("read1")
        //css("border","1px solid black"

    </script>

</body>
</html>