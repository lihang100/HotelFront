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
        .i{position: absolute;right: 245px;top: -2px;padding: 3px;border-radius: 5px;background-color: #ad0000  }
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

        .my{position: absolute;width: 1200px;height: 600px;right: 0px;top: 150px;  }
        .elent{width: 80px;height:80px;border-radius: 50%;background-color: yellow;padding-top: 10px;margin-left: 20px;float: left}
        .yan{width: 600px;border-left: 1px gray solid;position:absolute;left: 300px;top: 20px;padding-left: 30px;padding-top: 5px}
        .pass{ width: 100px;float: left;height: 40px;border: 1px solid #90704D;margin-top: 30px
        ;line-height: 40px;text-align: center; border-radius: 10px ;color:  #90704D;z-index: 100 }
        .xinxi{ height: 400px;width: 1200px;}
        .xinxi ul div{float: left;}
        .xinxi ul{margin-top: 20px;margin-left: 80px}
        .tag{height: 20px;width: 20px;margin-right: 10px}
        .xinxi a{ display:block;width: 170px;height:45px;background-color: #b01e21;border-radius: 10px; text-align: center;
            line-height: 45px;font-size: 20px;font-weight: 800;color: whitesmoke;cursor: pointer;margin-top: 40px;margin-left: 90px;  }
        .xinxi a:hover{background-color: rgba(176, 30, 33, 0.84);text-decoration: none  }
        .xinxi span{margin-left: 20px;opacity: 0; color: red}
       .uls{margin-left: 200px;width: 800px;margin-top: -50px}
       .uls li{
           margin-top: 20px;
       }



        .wei{height: 100px;margin-top: 95px;padding-top: 20px;background-color: rgba(227, 227, 227, 0.54);border-top: 1px rgba(184, 184, 184, 0.66) solid;
        }
        .wei a{ margin-left: 40px; text-decoration: none;color: #430752
        }
        .wei p{ text-align: center;margin-top: 20px;color: #430752}
        .myOrder{position: absolute;  left: 300px;top: 160px; width: 1000px;
        }
        .shou{float: right;margin-top: 70px;margin-right: -20px;font-size: 18px}
        .shou:hover{color: #a60000;cursor: pointer;
        }
        .myp{float: left;font-size: 20px;color:  #90704D;margin-top: -10px}
        .myp:hover{cursor: pointer;}
        .yuding{margin-left: 50px;text-align: center;;display: block;margin-top: -5px;
            width: 170px;  height: 45px;  background-color: #b01e21;  border-radius: 10px;  font-size: 20px;
            font-weight: 800;   cursor: pointer; float: left;line-height: 45px;
        }
        .yuding:hover{background-color: rgba(176, 30, 33, 0.87)
        }
        .imgsize{ width: 250px;height: 250px;margin-top: 25px;float: left}
        .imgs{width: 1200px;float: right;margin-top: -380px}
        .tubiao{margin-left: 10px}



        .btn-primary{z-index: 10;height: 40px;width:100px; background-color: white; !important;}
        .btn-primary:hover{color: white; background-color: #90704D;border: 1px solid white!important;}
        .T{width: 150px;height: 150px;

        }
        #d{display: block;text-decoration: none;  width: 170px;  height: 45px;  background-color: #b01e21;  border-radius: 10px;  text-align: center;  line-height: 45px;  font-size: 20px;  font-weight: 800;  color: whitesmoke;  cursor: pointer;  margin-top: 40px;}
        #d:hover{background-color: rgba(176, 30, 33, 0.9)
        }

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
    <a >酒店预订</a>

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


    <ul class="uls">
        <li><img src="img/my1.jpg" style="width: 150px;height: 150px"/>
            <div style="width: 500px;height: 60px;float: right;margin-top: -400px;margin-right: 130px">
                <span style="font-size: 20px">类型：</span><span style="font-size: 20px">标准间</span><br/>
                <div style="height: 10px"></div>
                <span style="font-size: 20px">金额：</span><span style="font-size: 20px;  color: rgba(176, 30, 33, 0.87)">100</span>
            </div>

            <div style="width: 500px;height: 70px;float: right;margin-top: -310px;margin-right: 130px">
            <h4   >酒店拥有一流的豪华俱乐部、酒吧、娱乐中心、SPA、宴会厅和世界着名品牌精品店等一系列设施恭候各位贵宾的光临。</h4>
            </div>
        </li>
        <li>姓名：</li>
        <li>性别：</li>
        <li>电话号码：</li>
        <li>入住日期</li>
        <li>退房日期</li>

        <a id="d">确认预定</a>

    </ul>


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