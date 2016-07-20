<%@page import="empties.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<link href="../css/common/bootstrap.min.css" rel="stylesheet">
<script src="../js/common/jquery-2.1.3.min.js"></script>
<script src="../js/common/bootstrap.min.js"></script>
<title>选择题目</title>
<style type="text/css">
  @media screen and (min-height: 600px){
    #content{
      height: 500px;
    }
  }
  @media screen and(min-height: 700px){
     #content{
      height: 700px;
    }
  }
  @media screen and (min-height: 890px) {
     #content{
      height: 800px;
    }
  }
  @media screen and (min-height: 1080px){
      #content{
      height: 1030px;
    }
  }
  @media screen and (min-height: 1200px){
     #content{
      height: 1150px;
    }
  }
  @media screen and (min-height: 1600px){
     #content{
      height: 1550px;
    }
  }

  .select{
   
  }
  .submit{
    height: 30px;
    width: 50px;
  } 
  .select_course{
    width: 400px;
    height: 120px;
  }
  .select_course option{
    height: 26px;
    font-size: 18px;
    vertical-align: middle;
    padding-top: 4px;
    padding-bottom: 4px;
  }
  
  .panel-title:after{
    content: "";
    display: block;
    clear: both;
  }
</style>
 <script type="text/javascript">
</script>
</head>
<body ng-app="teachApp" >
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#" style="padding:1px 10px">
     <img alt="Brand" src="../images/common/logo.jpg" style="width:50px;height:50px">
    </a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">消 息<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="stu_view_practice.html">通知</a></li>
            <li class="divider"></li>
            <li><a href="#">待办事项</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">课 程<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">软件工程</a></li>
            <li class="divider"></li>
            <li><a href="#">Java语言</a></li>
            <li class="divider"></li>
            <li><a href="#">C语言课程设计</a></li>
            <li class="divider"></li>
            <li><a href="#"><其他学期课程></a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">模 板<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">实验模板</a></li>
            <li class="divider"></li>
            <li><a href="#">试卷模板</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">资 源 <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">查询资源</a></li>
            <li class="divider"></li>
            <li><a href="#">上传资源</a></li>
          </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
		<% User u=(User)session.getAttribute("user");
    		
    		%>
        <li class="dropdown">
  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><%=u.getName() %>[<%=u.getSno() %>]<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">设置</a></li>
            <li class="divider"></li>
            <li><a href="index.html">退出</a></li>
          </ul>
        </li>

        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">常用链接 <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="http://www.xupt.edu.cn">西邮主页</a></li>
            <li class="divider"></li>
            <li><a href="http://lib.xupt.edu.cn">图书馆</a></li>
            <li class="divider"></li>
            <li><a href="http://cs.xupt.edu.cn">计算机学院</a></li>
            <li class="divider"></li>
            <li><a href="stu_view_practice.html">学生系统</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<div class="alert alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <a href="#">课 程</a>  -> <a href="#">软件工程</a>
</div>

<div class="row" style="padding:10px 20px">
  <div class="col-md-3">
    <div class="panel panel-primary">
      <div class="panel-heading">
        <h3 class="panel-title">2014-15-2学期</h3>
      </div>
      <ul class="list-group">
        <li class="list-group-item"  data-toggle="collapse" href="#collapseNote" >
          <strong>软件工程</strong>
        </li>
          <div id="collapseNote">
            <br>
            <table class="table table-condensed">
              <tr><td><a href="view_stu_select_selection.html" target="mainFrame">查看选课学生</a></td></tr>
              <tr><td><a href="set_group_select.html" target="mainFrame">管理实验/作业小组</a></td></tr>
              <tr><td><a href="manage_temp.html" target="mainFrame">安排实验/作业</a></td></tr>
            </table>
          </div>

        <li class="list-group-item" data-toggle="collapse" href="#collapseHelp" aria-expanded="false" aria-controls="collapseHelp">
          <strong>Java语言</strong>
        </li>
        <li class="list-group-item" data-toggle="collapse" href="#collapseHelp" aria-expanded="false" aria-controls="collapseHelp">
          <strong>C语言课程设计</strong>
        </li>
      </ul>
    </div>
  </div>
  <div class="col-md-9" ng-controller="test">
    <div class="row">

      <div class="col-xs-10 col-md-10">  

      <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
        <div class="panel panel-success">
          <div class="panel-heading" role="tab" id="headingOne">
            <h4 class="panel-title">
              <a style="float: left" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                单选题
              </a>
             
            </h4>
          </div>
          <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
            <div class="panel-body select">
              <p ng-repeat="item in data | filter : {types : 1}  "><input type="checkbox" value="{{item.id}}">{{item.txt}}</p>
            </div>
          </div>
        </div>
        <div class="panel panel-info">
          <div class="panel-heading" role="tab" id="headingTwo">
            <h4 class="panel-title">
              <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                多选题
              </a>
            </h4>
          </div>
          <div id="collapseTwo" class="panel-collapse collapse select_test" role="tabpanel" aria-labelledby="headingTwo">
            <div class="panel-body select">
              <p ng-repeat="item in data | filter : {types : 2}  "><input type="checkbox" value="{{item.id}}">{{item.txt}}</p>
            </div>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading" role="tab" id="headingThree">
            <h4 class="panel-title">
              <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                简答题
              </a>
             
            </h4>
          </div>
          <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
            <div class="panel-body select">
               <p ng-repeat="item in data | filter : {types : 2}  "><input type="checkbox" value="{{item.id}}">{{item.txt}}</p>
            </div>
          </div>
        </div>
      </div>
     
      </div>
      <div class="col-xs-2 col-md-2 ">
           <button id="add" style="position:fixed; right:60px;bottom:20px;width:80px;" type="button" class="btn btn-info " >添加
             <span class="caret"></span>
           </button>
      </div>
    </div>
	<div class="row">
    <div class="panel panel-info col-xs-10 col-md-10" style="padding:0;margin-left:15px;">
  <!-- Default panel contents -->
	  <div class="panel-heading" >已选题目</div>
	  <ul class="list-group addItems">
	  </ul>
	</div>
	</div>
	<button type="button" class="btn btn-primary btn-warning" data-toggle="modal" data-target="#myModal" >保存</button>        
	<form class="form-horizontal" style="display:inline-block">
           
        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">X</button>
                <h4 class="modal-title" id="myModalLabel">请写入试题名称</h4>
              </div>
              <div class="modal-body">
                <textarea resize:none style="width:100%;resize:none" cols="3" ng-model="testName"></textarea>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" data-dismiss="modal"  class="btn btn-primary" ng-click="save()">提交</button>
              </div>
            </div>
          </div>
        </div>
      </form>
    
    <a ng-click="cancle()" class="btn btn-info" >取消</a>
  </div>


<div >




</div>
</div>
<script type="text/javascript" src="../js/common/angular.js"></script>
<script type="text/javascript">

  var teacherTest = angular.module('teachApp', ['ng']);
  teacherTest.controller('test', function($scope,$http){
    
    $scope.data;
    $http({
    	method: 'GET',
    	params:{"idx_1":"50"},
    	url: 'teacher_findSelect.action'}).
    	success(function(data) {
      	$scope.data=data;
    
    });
    
    $scope.testChecked=[];
    $(".select").on("click","input",function(){
    	$scope.testChecked = [];
    	var input = $(".select").find('input:checked');
    	for(var i = 0 ; i< input.length ; i++){
    		$scope.testChecked.push(input[i].value);
    	}
    })
    
    $scope.item=0;
    $scope.addItems=[];
    $("#add").on("click",function(){
    	$scope.addItems = [];
    	for(var i in $scope.testChecked){
    		for(var j in $scope.data){
    			if($scope.data[j].id==$scope.testChecked[i]){
    				$scope.addItems.push($scope.data[j]);
    					
    			}
    		}
    	}
    	var str = '';
    	$scope.item=0;
	    for(var i in $scope.addItems){
	    	$scope.item++;
	    	str +='<li class="list-group-item">'+$scope.item+".&nbsp;&nbsp;&nbsp;&nbsp;"+$scope.addItems[i].txt+'</li>';
	        }
		$(".addItems").html(str);

    })

    $scope.cancle=function(){
    	$scope.item=0;
        $scope.addItems=[];
        $scope.testChecked=[];
        $('.select').find('input').removeAttr('checked');
        $(".addItems").html('');
    }
    
    $scope.save=function(){
    	$scope.checked="";
    	if($scope.testChecked.length==0){
    		alert("请选择题目！");
    	}
    	else{
    		for(var i in $scope.testChecked){
        		
        		$scope.checked +=$scope.testChecked[i];
        		if(i!=$scope.testChecked.length-1){
        			$scope.checked +=",";
        		}
        	}
        	
        	
        	 $.ajax({
        	    	url:"teacher_save.action",
        			type:"post",
        			data:{"types":$scope.testName,"txt":$scope.checked,"Answer":<%=u.getSno() %>},
        			success:function(data){
        				$(".form-horizontal").css("display","none")
        			},
    				error:function(){
        				alert("保存失败！")
        			}
        		});
    	}
    	
    }
   
  })
</script>
</body>
</html>
