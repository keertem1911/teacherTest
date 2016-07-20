<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<link href="../css/common/bootstrap.min.css" rel="stylesheet">
<script src="../js/common/jquery-2.1.3.min.js"></script>
<script src="../js/common/bootstrap.min.js"></script>
<title>管理题目</title>
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
    height: auto;
    padding: 5px;
    width: 30%;
  }
  .submit{
    height: 30px;
    width: 50px;
  } 
  .addItems input{
  	width:100%;
  	line-height:30px;
  	mine-height:30px;
  	margin-top:10px;
  }
  .addItems textarea{
  	width:100%;
  	line-height:30px;
  	mine-height:30px;
  	margin-top:10px;
  }
</style>
 <script type="text/javascript">
function doChange(){
    var oSelect=document.getElementById("gradName");
    var oIframe=document.getElementsByTagName("iframe")[0];
    var oSelect=document.getElementById("gradName");
    if(oSelect.selectedIndex==0)
      oIframe.src="";
    else
      oIframe.src='view_stu.html?gradId='+oSelect.value;  
  }
  function back(){
    window.history.go(-1);
  }
</script>
</head>
<body   ng-app="teachApp" ng-controller="zuoyeMA">
<%@ include file="../tmpl/header.jsp" %>


<div class="row" style="padding:80px 20px">
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
           <table class="table table-condensed" style="margin-bottom:0">
             <tr><td><a href="../teachPlan/teachPlan.jsp">实践教学计划</a></td></tr>
             <tr><td><a href="./set_group_home.jsp" >管理实验/作业小组</a></td></tr>
             <tr><td><a href="../setWork/set_test.jsp" >安排实验/作业</a></td></tr>
             <tr><td><a href="../grad/setGrad.jsp" >录入或查询成绩</a></td></tr>
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


  
  
  <div class="col-md-9 addTest">
  <div class="row" style="margin-left:0;margin-bottom:20px;">
	  <a class="link btn btn-success" ng-click="check()" style="margin-right:20px;">单选题</a>
	  <a class="link btn btn-default" ng-click="check()" style="margin-right:20px;">多选题</a>
	  <a class="link btn btn-default" ng-click="check()" style="margin-right:20px;">简答题</a>
  	  <a class="link btn btn-default" ng-click="check()" style="margin-right:20px;">上机题</a>
  </div>
    <div class="showMain row ">
	    <div class="panel panel-info col-xs-10 col-md-10" style="padding:0;margin-left:15px;">
	  <!-- Default panel contents -->
		  <div class="panel-heading" >单选题</div>
		  <table id="grounpView" class="table table-bordered table-hover">
              <tr  ng-repeat="item in data | filter : {types : 1}  ">
                <td width:70% ng-bind="item.txt"></td>
                <td width:14% style="text-align:center">
                	<button ng-click="upateSign(item)"  type="button" class="btn btn-info " data-toggle="modal" data-target="#myModal">修改
            		</button>
           		</td>
                <td width:14% style="text-align:center">
                	<button ng-click="del(item)"  type="button" class="btn btn-warning " >删除
            		</button>
           		</td>
   
              </tr>
          </table>
		</div>
	</div>
	
	<div class="showMain row" style="display:none">
	    <div class="panel panel-info col-xs-10 col-md-10" style="padding:0;margin-left:15px;">
	  <!-- Default panel contents -->
		  <div class="panel-heading" >多选题</div>
		  <table id="grounpView" class="table table-bordered table-hover">
              <tr  ng-repeat="it in data | filter : {types : 2}  ">
                <td width:70% ng-bind="it.txt"></td>
                <td width:14% style="text-align:center">
                	<button ng-click="upateSign(it)"  type="button" class="btn btn-info " data-toggle="modal" data-target="#myModal">修改
            		</button>
           		</td>
                <td width:14% style="text-align:center">
                	<button ng-click="del(it)"  type="button" class="btn btn-warning " >删除
            		</button>
           		</td>
   
              </tr>
          </table>
		</div>
	</div>
	<div class="showMain row" style="display:none">
	    <div class="panel panel-info col-xs-10 col-md-10" style="padding:0;margin-left:15px;">
	  <!-- Default panel contents -->
		  <div class="panel-heading" >简答题</div>
		  <table id="grounpView" class="table table-bordered table-hover">
              <tr  ng-repeat="it in data | filter : {types : 3}  ">
                <td width:70% ng-bind="it.txt"></td>
                <td width:14% style="text-align:center">
                	<button ng-click="upateSign(it)"  type="button" class="btn btn-info " data-toggle="modal" data-target="#myModal">修改
            		</button>
           		</td>
                <td width:14% style="text-align:center">
                	<button ng-click="del(it)"  type="button" class="btn btn-warning " >删除
            		</button>
           		</td>
   
              </tr>
          </table>
		</div>
	</div>
	
    <div class="showMain row" style="display:none">
	    <div class="panel panel-info col-xs-10 col-md-10" style="padding:0;margin-left:15px;">
	  <!-- Default panel contents -->
		  <div class="panel-heading" >上机题</div>
		  <table id="grounpView" class="table table-bordered table-hover">
              <tr  ng-repeat="it in data | filter : {types : 4}  ">
                <td width:70% ng-bind="it.txt"></td>
                <td width:14% style="text-align:center">
                	<button ng-click="upateSign(it)"  type="button" class="btn btn-info " data-toggle="modal" data-target="#myModal">修改
            		</button>
           		</td>
                <td width:14% style="text-align:center">
                	<button ng-click="del(it)"  type="button" class="btn btn-warning " >删除
            		</button>
           		</td>
   
              </tr>
          </table>
		</div>
	</div>
  </div>


<div >




</div>
</div>

<form class="form-horizontal" style="display:inline-block">
           
        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">X</button>
                <h4 class="modal-title" id="myModalLabel">请修改</h4>
              </div>
              <div class="modal-body">
                <div class=" row ">
	    <div class="panel panel-info col-xs-10 col-md-10" style="padding:0;margin-left:15px;">
	  <!-- Default panel contents -->
		  <ul class="list-group addItems" ng-model="updateS" ng-show="updateS.types==1">
		  		<li class="list-group-item">
		  			<div >输入题目</div>
		  			<div><input ng-model="updateS.txt" type="text" placeholder="输入标题" /></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>输入题目课程</div>
		  			<div><input ng-model="updateS.course" type="text" placeholder="输入标题"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>A选项</div>
		  			<div><input ng-model="updateS.idx_1" type="text" placeholder="输入A选项"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>B选项</div>
		  			<div><input ng-model="updateS.idx_2" type="text" placeholder="输入B选项"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>C选项</div>
		  			<div><input ng-model="updateS.idx_3" type="text" placeholder="输入C选项"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>D选项</div>
		  			<div><input ng-model="updateS.idx_4" type="text" placeholder="输入D选项"/></div>
		  		</li>
		  		
		  		<li class="list-group-item">
		  			<div>输入答案</div>
		  			<div><input ng-model="updateS.answer" type="text" placeholder="输入答案"/></div>
		  		</li>
		  </ul>
		  <ul class="list-group addItems" ng-model="updateS" ng-show="updateS.types==2">
		  		<li class="list-group-item">
		  			<div >输入题目</div>
		  			<div><input ng-model="updateS.txt" type="text" placeholder="输入标题" /></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>输入题目课程</div>
		  			<div><input ng-model="updateS.course" type="text" placeholder="输入标题"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>A选项</div>
		  			<div><input ng-model="updateS.idx_1" type="text" placeholder="输入A选项"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>B选项</div>
		  			<div><input ng-model="updateS.idx_2" type="text" placeholder="输入B选项"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>C选项</div>
		  			<div><input ng-model="updateS.idx_3" type="text" placeholder="输入C选项"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>D选项</div>
		  			<div><input ng-model="updateS.idx_4" type="text" placeholder="输入D选项"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>E选项</div>
		  			<div><input ng-model="updateS.idx_5" type="text" placeholder="输入E选项"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>F选项</div>
		  			<div><input ng-model="updateS.idx_6" type="text" placeholder="输入F选项"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>输入答案</div>
		  			<div><input ng-model="updateS.answer" type="text" placeholder="输入答案"/></div>
		  		</li>
		  </ul>
		  <ul class="list-group addItems" ng-model="updateS" ng-show="updateS.types==3||updateS.types==4">
		  		 <li class="list-group-item">
		  			<div >输入题目</div>
		  			<div><textarea ng-model="updateS.txt" type="text" placeholder="输入标题" ></textarea></div>
		  		</li> 
		  		<li class="list-group-item">
		  			<div>输入题目课程</div>
		  			<div><input ng-model="updateS.course" type="text" placeholder="输入标题"/></div>
		  		</li>
		
		  		<li class="list-group-item">
		  			<div>输入答案</div>
		  			<div><textarea ng-model="updateS.answer" type="text" placeholder="输入答案"></textarea></div>
		  		</li>
		  </ul>
		</div>
	</div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" data-dismiss="modal"  class="btn btn-primary" ng-click="save(updateS)">提交</button>
              </div>
            </div>
          </div>
        </div>
      </form>
<script type="text/javascript" src="../js/common/angular.js"></script>
    
<script type="text/javascript" src="../js/third-party/jquery.min.js"></script>
<script type="text/javascript" charset="utf-8" src="../js/umeditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="../js/umeditor.min.js"></script>
<script type="text/javascript" src="../js/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">

var teacherTest = angular.module('teachApp', ['ng']);
teacherTest.controller('zuoyeMA', function($scope,$http){
  
  $scope.data;
  $http({
  	method: 'GET',
  	params:{"idx_1":"50"},
  	url: 'teacher_findSelect.action'}).
  	success(function(data) {
    	$scope.data=data;
  
  });
  
  $('.link').click(function(){
  	$('.link').attr('class','link btn btn-default');
  	$(this).attr('class','link btn btn-success');
  	var index = $(this).index();
  	$('.showMain').hide().eq(index).show();
  }) 
	  
 //选择操作的题目
  $scope.upateSign=function(item){
	  $scope.updateS=null;
	  $scope.updateS=item;
  }
 
  
  $scope.save=function(updateS){
	  var param;
	  if(updateS.types==1){
		param={
				"id":updateS.id,
		   		"answer":updateS.answer,
		   		"idx_1":updateS.idx_1,
		   		"idx_2":updateS.idx_2,
		   		"idx_3":updateS.idx_3,
		   		"idx_4":updateS.idx_4,
		   		"txt":updateS.txt
		   	}
	  }else if(updateS.types==2){
		  param={
					"id":updateS.id,
			   		"answer":updateS.answer,
			   		"idx_1":updateS.idx_1,
			   		"idx_2":updateS.idx_2,
			   		"idx_3":updateS.idx_3,
			   		"idx_4":updateS.idx_4,
			   		"idx_5":updateS.idx_5,
			   		"idx_6":updateS.idx_6,
			   		"txt":updateS.txt
			   	}
	  }else if(updateS.types==3||updateS.types==4){
		  param={
					"id":updateS.id,
			   		"answer":updateS.answer,
			   		"txt":updateS.txt
			   	}
	  }
	  
	  $.ajax({
			url:"teacher_updateByquestion.action",
			type:"post",
			dataType:"json",
			data:param,
			success:function(msg){
				if(msg.status)
					alert("修改成功");
				else{
					alert("修改失败！");
				}
			}
		});
	  
	  $http({
		  	method: 'GET',
		  	params:{"idx_1":"50"},
		  	url: 'teacher_findSelect.action'}).
		  	success(function(data) {
		    	$scope.data=data;
		  
	 });
  }
  
  $scope.del=function(item){
	  alert(item.id);
	 $.ajax({
			url:"teacher_deleteByquestion.action",
			type:"post",
			dataType:"json",
			data:{"id":item.id},
			success:function(msg){
				if(msg.status)
					alert("删除成功");
				else{
					alert("删除失败！");
				}
					
			}
		}); 
  }
})
</script>
</body>
</html>
