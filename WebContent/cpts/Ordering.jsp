<%@ page language="java" contentType="text/html; charset=Utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <link href="css/bootstrap.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="js/jquery-3.3.1.js"></script>
    <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="layui-v2.4.5/layui/css/layui.css"
          media="all">


    <title>预定</title>
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
        .read{border: none;outline: none}
        .read1{display: none}
        .read2{display: none}
        .nv{}
        .nan{}



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
            <a href="UserInfo.jsp" style="text-decoration: none; line-height:40px;color: rgba(93, 46, 20, 0.92)">&nbsp;${user.uname }&nbsp;</a>
            <span>&nbsp;|</span>
            <a href="../login/login.jsp" style="text-decoration: none;color: rgba(93, 46, 20, 0.92)"> &nbsp;注销</a>


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
            <a href="Order.jsp" class="bb">我的订单</a><br/>
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
            <a href="UserInfo.jsp">我的信息</a><br/>
            <a> 我的点评</a>
        </div>
        <div class="dian">
            <p>常用信息<span class="glyphicon glyphicon-menu-down" style="padding-left: 10px;color: #985f0d;font-size: 15px"></span></p>
        </div>
        <div class="pp">
            <a >收藏酒店</a>
        </div>
        <div class="myOrder">
        <form id="orderingForm">
            <div class="form-group " style="float: left;margin-left: 20px">

                <select name="type" class="form-control  "   id="sel1" style="width: 250px;height: 38px ;">
                    <option>标准间</option>
                    <option>豪华间</option>
                    <option>双人标间</option>
                    <option>情侣间</option>
                    <option>商务房</option>
                    <option>行政房</option>
                    <option>大床房</option>
                    <option>双人豪华间</option>
                    <option>三人标间</option>
                </select>

            </div>

        <div class="layui-input-inline" style="float: left;margin-left: 20px">
            <input type="text" name="starttime" class="layui-input" id="test1" placeholder="入住日期" style="width: 200px">
        </div>
            <div class="layui-input-inline" style="float: left;">

                <input type="text" name="endtime" class="layui-input" id="test2" placeholder="离房日期" style="margin-left: 20px">
            </div>
        </form>

            <div class="yuding" >
            <a id="ordering" style="color: white;text-decoration: none">立即预定</a>
            </div>
            <p style="margin-top: 60px;margin-left: 20px;">房间介绍</p>

        </div>



</div>
    <div class="imgs">
        <div style="width:100%;height: 300px">
            <img class="imgsize" src="img/my1.jpg" alt=""/>
            <div  style="width: 600px;height: 300px;float: left">
                <div style="margin-top: 50px;width: 600px;margin-left: 20px">
                    <span class="glyphicon glyphicon-map-marker" style="float: left;margin-top: -6px;font-size: 18px"></span>
                    <p class="myp" >标准间</p><br/>

                <p  style="text-align: center;margin-top: 10px;padding-right: 20px">酒店拥有一流的豪华俱乐部、酒吧、娱乐中心、SPA、宴会厅和世界着名品牌精品店等一系列设施恭候各位贵宾的光临。</p>
                </div>
                <div style="margin-top: 70px">
                    <img class="tubiao" src="img/t1.png" title="自助早餐"/>
                    <img class="tubiao" src="img/t2.png" title="50WIFI"/>
                    <img class="tubiao" src="img/t6.png" title="积分抵压房费"/><br/>
                    <span class="tubiao">自助早餐</span>
                    <span style="margin-left: 20px">50WIFI</span>
                    <span style="margin-left: 15px">积分抵压房费</span>


                </div>
            </div>
            <div style="width: 350px;float: right;height: 87%;margin-top: 40px;">
                <h4 style="float: right;margin-top: 10px;margin-right: 230px">/5分</h4><h3 style="float: right">5.0</h3>
                <p style="float: right;margin-top: 40px;margin-right: -60px">1223人点评</p>
                <span title="收藏" class="glyphicon glyphicon-heart shou"></span>
                <span  style="float: right;margin-top: 65px;margin-right: -70px;font-size: 18px">收藏</span>
                <span style="float: right;margin-top: 125px;margin-right: 20px;font-size: 20px;color: rgba(176, 30, 33, 0.87) "  class="glyphicon glyphicon-yen"></span>
                <span style="float: right;margin-top: 115px;margin-right: -80px;font-size: 35px;  color: rgba(176, 30, 33, 0.87)">100</span>

                <div class="pass" style="border: none">
                    <a class="bian btn btn-primary pass2 pass" data-toggle="modal" data-target=".bs-example-modal-lg" style="text-decoration: none;color: #90704D;margin-top: 0px;padding-top: 0px;padding-left: 8px  "> 查看详情
                        <span class="glyphicon glyphicon-menu-right " ></span></a>


                    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"  >
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div style="width: 1100px;height: 400px">
                                    <img style="width: 400px;height: 400px;float: left"  src="img/my1.jpg" alt=""/>


                                        <div style="width: 500px;height: 100%;float: left;">
                                            <img class="T" src="img/T1.jpeg" alt=""/>
                                            <img class="T" src="img/T2.jpg" alt=""/>
                                            <img class="T" src="img/T3.jpg" alt=""/>
                                            <span style="float: right;color:  #90704D;">皇家国际饭店是融会国际顶尖商务酒店设计理念，装潢艺术构造于一体的四星级豪华酒店。酒店拥有豪华套房。酒店客房关注到每一个细节的典雅装饰，尤其是精致前卫的磨砂玻璃幕墙浴室。酒店拥有一流的豪华俱乐部、宴会厅和世界着名品牌精品店等一系列设施恭候各位贵宾的光临。</span>



                                            <div style="margin-top:100px;">
                                                <img class="tubiao" src="img/t1.png" title="自助早餐"/>
                                                <img class="tubiao" src="img/t2.png" title="50WIFI"/>
                                                <img class="tubiao" src="img/t6.png" title="积分抵压房费"/><br/>
                                                <span style="margin-left: 20px;color: #90704D;">自助早餐</span>
                                                <span style="margin-left: 20px;color: #90704D;">50WIFI</span>
                                                <span style="margin-left: 15px;color: #90704D;">积分抵压房费</span>


                                            </div>
                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>



                </div>
            </div>
        </div>
      <hr  style="height:0px; border-top:1px solid #999; border-right:0px; border-bottom:0px; border-left:0px; "/>
        <div style="width: 100%;height: 300px">
            <img class="imgsize" src="img/my2.jpg" alt=""/>
            <div  style="width: 600px;height: 300px;float: left">
                <div style="margin-top: 50px;width: 600px;margin-left: 20px">
                    <span class="glyphicon glyphicon-map-marker" style="float: left;margin-top: -6px;font-size: 18px"></span>
                    <p  class="myp">大床房</p><br/>

                    <p style="text-align: center;margin-top: 10px;padding-right: 20px">皇家国际饭店是融会国际顶尖商务酒店设计理念。酒店客房关注到每一个细节的典雅装饰，尤其是精致前卫的磨砂玻璃幕墙浴室，令居住其中成为美的享受，让商务劳顿烟消云散，使您尽享都市风情。</p>
                </div>
                <div style="margin-top: 70px">
                    <img class="tubiao" src="img/t1.png" title="自助早餐"/>
                    <img class="tubiao" src="img/t2.png" title="50WIFI"/>
                    <img class="tubiao" src="img/t6.png" title="积分抵压房费"/>
                    <img class="tubiao" src="img/t4.png" title="停车位"/><br/>
                    <span class="tubiao">自助早餐</span>
                    <span style="margin-left: 20px">50WIFI</span>
                    <span style="margin-left: 15px">积分抵压房费</span>
                    <span style="margin-left: 15px">停车位</span>


                </div>
            </div>
            <div style="width: 350px;float: right;height: 87%;margin-top: 40px;">
                <h4 style="float: right;margin-top: 10px;margin-right: 230px">/5分</h4><h3 style="float: right">5.0</h3>
                <p style="float: right;margin-top: 40px;margin-right: -60px">1563人点评</p>
                <span title="收藏" class="glyphicon glyphicon-heart shou"></span>
                <span  style="float: right;margin-top: 65px;margin-right: -70px;font-size: 18px">收藏</span>
                <span style="float: right;margin-top: 125px;margin-right: 20px;font-size: 20px;color: rgba(176, 30, 33, 0.87) "  class="glyphicon glyphicon-yen"></span>
                <span style="float: right;margin-top: 115px;margin-right: -80px;font-size: 35px;  color: rgba(176, 30, 33, 0.87)">220</span>

                <div class="pass" >
                    <a style="text-decoration: none;color: #90704D"> 查看详情</a>
                    <span class="glyphicon glyphicon-menu-right"></span>
                </div>
            </div>


        </div>
       <hr  style="height:0px; border-top:1px solid #999; border-right:0px; border-bottom:0px; border-left:0px; "/>
        <div style="width:100%;height: 300px">
            <img class="imgsize" src="img/my3.jpg" alt=""/>
            <div  style="width: 600px;height: 300px;float: left">
                <div style="margin-top: 50px;width: 600px;margin-left: 20px">
                    <span class="glyphicon glyphicon-map-marker" style="float: left;margin-top: -6px;font-size: 18px"></span>
                    <p  class="myp">情侣房</p><br/>

                    <p style="text-align: center;margin-top: 10px;padding-right: 20px">你来到我身边，轻轻地相恋。时间冲不淡，流言拆不开。因为有你，所以牵挂;因为牵挂，所以充实。也许，我不能给你全部的幸福，但是我的幸福全部给你!给您一万个爱的理由</p>
                </div>
                <div style="margin-top: 70px">
                    <img class="tubiao" src="img/t1.png" title="自助早餐"/>
                    <img class="tubiao" src="img/t2.png" title="50WIFI"/>
                    <img class="tubiao" src="img/t6.png" title="积分抵压房费"/>
                    <img class="tubiao" src="img/t4.png" title="停车位"/><br/>
                    <span class="tubiao">自助早餐</span>
                    <span style="margin-left: 20px">50WIFI</span>
                    <span style="margin-left: 15px">积分抵压房费</span>
                    <span style="margin-left: 15px">停车位</span>


                </div>
            </div>
            <div style="width: 350px;float: right;height: 87%;margin-top: 40px;">
                <h4 style="float: right;margin-top: 10px;margin-right: 230px">/5分</h4><h3 style="float: right">5.0</h3>
                <p style="float: right;margin-top: 40px;margin-right: -60px">3533人点评</p>
                <span title="收藏" class="glyphicon glyphicon-heart shou"></span>
                <span  style="float: right;margin-top: 65px;margin-right: -70px;font-size: 18px">收藏</span>
                <span style="float: right;margin-top: 125px;margin-right: 20px;font-size: 20px;color: rgba(176, 30, 33, 0.87) "  class="glyphicon glyphicon-yen"></span>
                <span style="float: right;margin-top: 115px;margin-right: -80px;font-size: 35px;  color: rgba(176, 30, 33, 0.87)">350</span>

                <div class="pass" >
                    <a style="text-decoration: none;color: #90704D"> 查看详情</a>
                    <span class="glyphicon glyphicon-menu-right"></span>
                </div>
            </div>
        </div>

        <hr style="height:0px; border-top:1px solid #999; border-right:0px; border-bottom:0px; border-left:0px; "/>
        <div style="width: 100%;height: 300px">
            <img class="imgsize" src="img/my4.jpg" alt=""/>
            <div  style="width: 600px;height: 300px;float: left">
                <div style="margin-top: 50px;width: 600px;margin-left: 20px">
                    <span class="glyphicon glyphicon-map-marker" style="float: left;margin-top: -6px;font-size: 18px"></span>
                    <p  class="myp">行政房</p><br/>

                    <p style="text-align: center;margin-top: 10px;padding-right: 20px">酒店设计以金黄色为主色调，弥漫着浓郁的地中海风情，更有来自世界各地的装饰：法国的青铜、意大利的音乐喷泉、法国的水晶灯、国际一流水准的寝室用品、加上富丽堂皇的回廊，金箔的装饰，由内及外无不彰显皇室气派。将您带回到埃及神秘的贵族奢华尊贵的生活。</p>
                </div>
                <div style="margin-top: 70px">
                    <img class="tubiao" src="img/t1.png" title="自助早餐"/>
                    <img class="tubiao" src="img/t2.png" title="50WIFI"/>
                    <img class="tubiao" src="img/t6.png" title="积分抵压房费"/>
                    <img class="tubiao" src="img/t4.png" title="停车位"/>
                    <img class="tubiao" src="img/t5.png" title="电脑"/>
                    <img class="tubiao" src="img/t3.png" title="会议室"/><br/>
                    <span class="tubiao">自助早餐</span>
                    <span style="margin-left: 20px">50WIFI</span>
                    <span style="margin-left: 15px">积分抵压房费</span>
                    <span style="margin-left: 15px">停车位</span>
                    <span style="margin-left: 30px">电脑</span>
                    <span style="margin-left: 40px">会议室</span>



                </div>
            </div>
            <div style="width: 350px;float: right;height: 87%;margin-top: 40px;">
                <h4 style="float: right;margin-top: 10px;margin-right: 230px">/5分</h4><h3 style="float: right">5.0</h3>
                <p style="float: right;margin-top: 40px;margin-right: -60px">523人点评</p>
                <span title="收藏" class="glyphicon glyphicon-heart shou"></span>
                <span  style="float: right;margin-top: 65px;margin-right: -70px;font-size: 18px">收藏</span>
                <span style="float: right;margin-top: 125px;margin-right: 20px;font-size: 20px;color: rgba(176, 30, 33, 0.87) "  class="glyphicon glyphicon-yen"></span>
                <span style="float: right;margin-top: 115px;margin-right: -80px;font-size: 35px;  color: rgba(176, 30, 33, 0.87)">550</span>

                <div class="pass" >
                    <a style="text-decoration: none;color: #90704D"> 查看详情</a>
                    <span class="glyphicon glyphicon-menu-right"></span>
                </div>
            </div>
        </div>
        <hr style="height:0px; border-top:1px solid #999; border-right:0px; border-bottom:0px; border-left:0px; "/>
        <div style="width: 100%;height: 300px">
            <img class="imgsize" src="img/my5.jpg" alt=""/>
            <div  style="width: 600px;height: 300px;float: left">
                <div style="margin-top: 50px;width: 600px;margin-left: 20px">
                    <span class="glyphicon glyphicon-map-marker" style="float: left;margin-top: -6px;font-size: 18px"></span>
                    <p  class="myp">豪华间</p><br/>

                    <p style="text-align: center;margin-top: 10px;padding-right: 20px">酒店拥有广州一流的豪华俱乐部、西餐厅、日本料理、粤菜、酒吧、娱乐中心、SPA、宴会厅、大型停车场和世界著名品牌精品店等一系列设施恭候各位贵宾的光临。</p>
                </div>
                <div style="margin-top: 70px">
                    <img class="tubiao" src="img/t1.png" title="自助早餐"/>
                    <img class="tubiao" src="img/t2.png" title="50WIFI"/>
                    <img class="tubiao" src="img/t6.png" title="积分抵压房费"/>
                    <img class="tubiao" src="img/t4.png" title="停车位"/>
                    <img class="tubiao" src="img/t5.png" title="电脑"/><br/>
                    <span class="tubiao">自助早餐</span>
                    <span style="margin-left: 20px">50WIFI</span>
                    <span style="margin-left: 15px">积分抵压房费</span>
                    <span style="margin-left: 15px">停车位</span>
                    <span style="margin-left: 30px">电脑</span>

                </div>
            </div>
            <div style="width: 350px;float: right;height: 87%;margin-top: 40px;">
                <h4 style="float: right;margin-top: 10px;margin-right: 230px">/5分</h4><h3 style="float: right">5.0</h3>
                <p style="float: right;margin-top: 40px;margin-right: -60px">423人点评</p>
                <span title="收藏" class="glyphicon glyphicon-heart shou"></span>
                <span  style="float: right;margin-top: 65px;margin-right: -70px;font-size: 18px">收藏</span>
                <span style="float: right;margin-top: 125px;margin-right: 20px;font-size: 20px;color: rgba(176, 30, 33, 0.87) "  class="glyphicon glyphicon-yen"></span>
                <span style="float: right;margin-top: 115px;margin-right: -80px;font-size: 35px;  color: rgba(176, 30, 33, 0.87)">200</span>

                <div class="pass" >
                    <a style="text-decoration: none;color: #90704D"> 查看详情</a>
                    <span class="glyphicon glyphicon-menu-right"></span>
                </div>
            </div>
        </div>
        <hr style="height:0px; border-top:1px solid #999; border-right:0px; border-bottom:0px; border-left:0px; "/>
        <div style="width: 100%;height: 300px">
            <img class="imgsize" src="img/my6.jpg" alt=""/>
            <div  style="width: 600px;height: 300px;float: left">
                <div style="margin-top: 50px;width: 600px;margin-left: 20px">
                    <span class="glyphicon glyphicon-map-marker" style="float: left;margin-top: -6px;font-size: 18px"></span>
                    <p  class="myp">双人标间</p><br/>

                    <p style="text-align: center;margin-top: 10px;padding-right: 20px">美酒佳肴迎挚友；名楼雅座待高朋。美味招徕云外客；清香引出互中仙。沽酒客来风亦醉；欢宴人去路还香。惠风畅意香盈座；满碗佳肴满店香</p>
                </div>
                <div style="margin-top: 70px">
                    <img class="tubiao" src="img/t1.png" title="自助早餐"/>
                    <img class="tubiao" src="img/t2.png" title="50WIFI"/>
                    <img class="tubiao" src="img/t6.png" title="积分抵压房费"/><br/>
                    <span class="tubiao">自助早餐</span>
                    <span style="margin-left: 20px">50WIFI</span>
                    <span style="margin-left: 15px">积分抵压房费</span>


                </div>
            </div>
            <div style="width: 350px;float: right;height: 87%;margin-top: 40px;">
                <h4 style="float: right;margin-top: 10px;margin-right: 230px">/5分</h4><h3 style="float: right">5.0</h3>
                <p style="float: right;margin-top: 40px;margin-right: -60px">2223人点评</p>
                <span title="收藏" class="glyphicon glyphicon-heart shou"></span>
                <span  style="float: right;margin-top: 65px;margin-right: -70px;font-size: 18px">收藏</span>
                <span style="float: right;margin-top: 125px;margin-right: 20px;font-size: 20px;color: rgba(176, 30, 33, 0.87) "  class="glyphicon glyphicon-yen"></span>
                <span style="float: right;margin-top: 115px;margin-right: -80px;font-size: 35px;  color: rgba(176, 30, 33, 0.87)">150</span>

                <div class="pass" >
                    <a style="text-decoration: none;color: #90704D"> 查看详情</a>
                    <span class="glyphicon glyphicon-menu-right"></span>
                </div>
            </div>
        </div>
        <hr style="height:0px; border-top:1px solid #999; border-right:0px; border-bottom:0px; border-left:0px; "/>
        <div style="width: 100%;height: 300px">
            <img class="imgsize" src="img/my7.jpg" alt=""/>
            <div  style="width: 600px;height: 300px;float: left">
                <div style="margin-top: 50px;width: 600px;margin-left: 20px">
                    <span class="glyphicon glyphicon-map-marker" style="float: left;margin-top: -6px;font-size: 18px"></span>
                    <p  class="myp">商务房</p><br/>

                    <p style="text-align: center;margin-top: 10px;padding-right: 20px">华灯初上，万物升平，数十间豪华的KTV包房隐没在皇家的夜色之中，这里的镜、画、光、饰、挂、摆、陈、色、间等九大娱乐空间的新概念，匠心独具、金雕玉砌、浑然天成</p>
                </div>
                <div style="margin-top: 70px">
                    <img class="tubiao" src="img/t1.png" title="自助早餐"/>
                    <img class="tubiao" src="img/t2.png" title="50WIFI"/>
                    <img class="tubiao" src="img/t6.png" title="积分抵压房费"/>
                    <img class="tubiao" src="img/t4.png" title="停车位"/>
                    <img class="tubiao" src="img/t5.png" title="电脑"/><br/>
                    <span class="tubiao">自助早餐</span>
                    <span style="margin-left: 20px">50WIFI</span>
                    <span style="margin-left: 15px">积分抵压房费</span>
                    <span style="margin-left: 15px">停车位</span>
                    <span style="margin-left: 30px">电脑</span>




                </div>
            </div>
            <div style="width: 350px;float: right;height: 87%;margin-top: 40px;">
                <h4 style="float: right;margin-top: 10px;margin-right: 230px">/5分</h4><h3 style="float: right">5.0</h3>
                <p style="float: right;margin-top: 40px;margin-right: -60px">323人点评</p>
                <span title="收藏" class="glyphicon glyphicon-heart shou"></span>
                <span  style="float: right;margin-top: 65px;margin-right: -70px;font-size: 18px">收藏</span>
                <span style="float: right;margin-top: 125px;margin-right: 20px;font-size: 20px;color: rgba(176, 30, 33, 0.87) "  class="glyphicon glyphicon-yen"></span>
                <span style="float: right;margin-top: 115px;margin-right: -80px;font-size: 35px;  color: rgba(176, 30, 33, 0.87)">440</span>

                <div class="pass" >
                    <a style="text-decoration: none;color: #90704D"> 查看详情</a>
                    <span class="glyphicon glyphicon-menu-right"></span>
                </div>
            </div>
        </div>
        <hr style="height:0px; border-top:1px solid #999; border-right:0px; border-bottom:0px; border-left:0px; "/>
        <div style="width: 100%;height: 300px">
            <img class="imgsize" src="img/my8.jpg" alt=""/>
            <div  style="width: 600px;height: 300px;float: left">
                <div style="margin-top: 50px;width: 600px;margin-left: 20px">
                    <span class="glyphicon glyphicon-map-marker" style="float: left;margin-top: -6px;font-size: 18px"></span>
                    <p  class="myp">双人豪华房</p><br/>

                    <p style="text-align: center;margin-top: 10px;padding-right: 20px">中、西式餐厅、“皇家第一汤”、“海鲜自助西餐厅”荟萃全国乃至世界各地的经典菜肴和名点，还有“西式扒房”向您介绍全市独一无二的正宗西式牛扒。精致且富含不同国家文化色彩的美味佳肴是您商务聚会或宴请宾朋的绝佳去处，令您齿颐留香</p>
                </div>
                <div style="margin-top: 70px">
                    <img class="tubiao" src="img/t1.png" title="自助早餐"/>
                    <img class="tubiao" src="img/t2.png" title="50WIFI"/>
                    <img class="tubiao" src="img/t6.png" title="积分抵压房费"/>
                    <img class="tubiao" src="img/t4.png" title="停车位"/>
                    <img class="tubiao" src="img/t5.png" title="电脑"/><br/>


                    <span class="tubiao">自助早餐</span>
                    <span style="margin-left: 20px">50WIFI</span>
                    <span style="margin-left: 15px">积分抵压房费</span>
                    <span style="margin-left: 15px">停车位</span>
                    <span style="margin-left: 30px">电脑</span>



                </div>
            </div>
            <div style="width: 350px;float: right;height: 87%;margin-top: 40px;">
                <h4 style="float: right;margin-top: 10px;margin-right: 230px">/5分</h4><h3 style="float: right">5.0</h3>
                <p style="float: right;margin-top: 40px;margin-right: -60px">2723人点评</p>
                <span title="收藏" class="glyphicon glyphicon-heart shou"></span>
                <span  style="float: right;margin-top: 65px;margin-right: -70px;font-size: 18px">收藏</span>
                <span style="float: right;margin-top: 125px;margin-right: 20px;font-size: 20px;color: rgba(176, 30, 33, 0.87) "  class="glyphicon glyphicon-yen"></span>
                <span style="float: right;margin-top: 115px;margin-right: -80px;font-size: 35px;  color: rgba(176, 30, 33, 0.87)">300</span>

                <div class="pass" >
                    <a style="text-decoration: none;color: #90704D"> 查看详情</a>
                    <span class="glyphicon glyphicon-menu-right"></span>
                </div>
            </div>
        </div>



    </div>


<script src="js/jquery-3.3.1.js"></script>
<script src="layui-v2.4.5/layui/layui.js" charset="utf-8"></script>
<script>
	
	//傅
	$("#ordering").click(function(){
		var orderList =  $("#orderingForm").serializeArray();
		console.log(orderList);
		$.getJSON("../OrderingServlet",orderList,function(data){
			console.log(data.result);
			if(data.result=='成功'){
				alert("预定成功");
				window.location.href="Order.jsp";
			}else{
				alert("您预定的时间内此房间类型已预定满，请重新选择");
			}
		})
	})
	
	

	//李航
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