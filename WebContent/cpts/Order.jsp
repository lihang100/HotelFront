<%@ page language="java" contentType="text/html; charset=Utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>

<html>
<head lang="en">
    <meta charset="UTF-8">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="layui-v2.4.5/layui/css/layui.css" media="all"/>

    <title>订单</title>
    <style>
        *{ padding: 0px; margin: 0px}
        a:hover{cursor:pointer ;}

        .d1{height: 80px; border-bottom:1px gray solid; position: relative}
        .d1 span:hover{ cursor: pointer;}
        .i{position: absolute;right: 255px;top: -2px;padding: 3px;border-radius: 5px;background-color: #ad0000  }
        .con li{ float: left;  list-style: none;padding-left: 35px; text-align: center;height:80px;  line-height: 100px;  }
        .con li{cursor:pointer;}
        .con div{ height: 5px;margin-top: 0px;}

        .d2{ ;height: 40px; float: right;  margin-top: 5px; margin-right:250px }
        .a{ margin-top: 15px;margin-left: 160px;}
        .a a{color: #646464;text-decoration: none;}
        .taskbar{width: 110px;height: 500px;margin-left: 160px;margin-top: 30px;}
        .taskbar p{ font-size: 18px ; color: #3c3c3c  }
        .dian{height: 38px;float: left; margin-top: 40px}
        .pp{ float: left}
        .pp a{text-decoration: none;color: #646464  }
        .pp a:visited{color: red}

        .my{position: absolute;width: 1000px;height: 600px;right: 100px;top: 130px;}
        .my th{text-align: center}
        .xinxi ul div{float: left;}
        .xinxi ul{margin-top: 20px;margin-left: 80px}
        .tag{height: 20px;width: 20px;margin-right: 10px}
        .xinxi a{ display:block;width: 170px;height:45px;background-color: #b01e21;border-radius: 10px; text-align: center;
            line-height: 45px;font-size: 20px;font-weight: 800;color: whitesmoke;cursor: pointer;margin-top: 40px;margin-left: 90px;  }
        .xinxi a:hover{background-color: rgba(176, 30, 33, 0.84);text-decoration: none  }


        .wei{height: 100px;margin-top: 95px;padding-top: 20px;background-color: rgba(227, 227, 227, 0.54);border-top: 1px rgba(184, 184, 184, 0.66) solid;
        }
        .wei a{ margin-left: 40px; text-decoration: none;color: #430752
        }
        .wei p{ text-align: center;margin-top: 20px;color: #430752}

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
            <a style="text-decoration: none; line-height:40px;color: rgba(93, 46, 20, 0.92)">&nbsp;${user.uname }&nbsp;</a>
            <span>&nbsp;|</span>
            <a href="../login/login.jsp" style="text-decoration: none;color: rgba(93, 46, 20, 0.92)"> &nbsp;注销</a>


        </div>
    </div>

    <div class="a">
        <a style="float: left">当前位置 :&nbsp;</a>
            <a >&nbsp;首页</a>
        <span class="glyphicon glyphicon-menu-right"></span>
        <a >个人中心</a>
        <span class="glyphicon glyphicon-menu-right"></span>
        <a >我的信息</a>
    </div>
    

    <div class="taskbar">
        <span style="font-size: 22px">我的酒店</span>
        <div class="dian" style="margin-top: 30px;">
            <p>订单中心<span class="glyphicon glyphicon-menu-down" style="padding-left: 10px;color: #985f0d;font-size: 15px"></span></p>
        </div >
        <div class="pp">
            <a   class="bb" style="color:  #b01e21">我的订单</a><br/>
           
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
    </div>


    <div class="my" >
       <table class="layui-hide" id="orderTable" lay-filter="demo"></table>
    </div>

    <div class="wei">
        <div >
            <a style="margin-left: 530px;">酒店介绍</a>
            <a >酒店加盟</a>
            <a >职位招聘</a>
            <a >意见反馈</a>
            <a >联系我们</a>
        </div>
        <p> 沪ICP备12041475|@ChengCheng All Rights reservrd.城成酒店管理有限公司</p>
    </div>

<script src="js/jquery-3.3.1.js"></script>
<script src="layui-v2.4.5/layui/layui.js"></script>
<script type="text/html" id="barDemo">
	<a class="layui-btn layui-btn-primary  layui-btn-xs" lay-event="detail">查看</a>
</script>
<script>
	layui.use(['table'],function(){
		var table = layui.table;
		
		var orderTable = table.render({
			elem:'#orderTable'
			,url:'../ShowOrderServlet'
			,cols:[[
				{field:'oid', width:90,align:'center', title: '订单编号',sort: true}
                ,{field:'rid', width:90,align:'center', title: '房间号',sort: true}
                ,{field:'starttime', width:140,align:'center', title: '入住时间'}
                ,{field:'endtime', width:140,align:'center', title: '离开时间'}
                ,{field:'eprice', width:110,align:'center', title: '价格（元）',sort: true}
                ,{field:'booktime', width:140,align:'center', title: '预定时间'}
                ,{field:'status', width:80,align:'center', title: '状态'}
                ,{field:'remark', width:90,align:'center', title: '备注'}
                ,{title:'操作',fixed:'right',width:120,align:'center',toolbar:'#barDemo'}
			]]
			,page:true
			,even: true
			,done : function(res, curr, count){
		        
		        tableList=res.data;
		       $('th').css({'background-color': '#5792c6', 'color': '#fff','font-weight':'bold'})
		      
		    }
		});
		 //监听工具条
        table.on('tool(demo)',function(obj){
        	var data = obj.data;
        	var event = obj.event;
        	if(event=='detail'){//查看
        		var ss = "订单编号："+data.oid+"<br/>房间号："+data.rid
        		+"<br/>用户id："+data.uid+"<br/>员工id："+data.eid
        		+"<br/>入住时间："+data.starttime+"<br/>离开时间："+data.endtime
        		+"<br/>价格（元）："+data.eprice+"<br/>状态："+data.status
        		+"<br/>预定时间："+data.booktime+"<br/>备注："+data.remark;
        		layer.alert(ss);
        	}
        });
		
	})

	
    $(".con span").mouseover(function(){
        $(this).siblings("div").css("background-color","#b01e21")
    });
    $(".con span").mouseout(function(){
        $(this).siblings("div").css("background-color","")
    });
    $(".pass").mouseover(function(){
        $(this).css("background-color","#b01e21")
        $(this).children().css("color","white")
    });
    $(".pass").mouseout(function(){
        $(this).css("background-color","")
        $(this).children().css("color","#b01e21")
    });
    $("#b").click(function(){
        var text=  $("#b").text();
        if(text=="编辑"){
            $(".read").removeAttr("readOnly").css("border","1px solid gray").css("outline","gray none thick");
            var a=  $("#b").text("保存");
            $(".read1").removeClass("read1");
            $("reaa").removeClass("read1");
            $("reaa1").removeClass("read1")


        }else if( text=="保存"){
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

    });


    //removeClass("read").addClass("read1")
    //css("border","1px solid black"

</script>

</body>
</html>