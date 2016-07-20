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
<title>查找试卷</title>
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
<body   ng-app="teachApp" ng-controller="testFi">
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
             <tr><td><a href="../groupMa/set_group_home.jsp" >管理实验/作业小组</a></td></tr>
             <tr><td><a href="../setWork/set_test.jsp" >安排实验/作业</a></td></tr>
             <tr><td><a href="../grad/setGrad.jsp" >实验结果、报告和成绩查询</a></td></tr>
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
    <div class="showMain row ">
	    <div class="panel panel-info col-xs-10 col-md-10" style="padding:0;margin-left:15px;">
	  <!-- Default panel contents -->
		  <table id="grounpView" class="table table-bordered table-hover">
              <tr  ng-repeat="item in data ">
                <td width:67% ng-bind="item.name"></td>
                <td width:10% style="text-align:center">
                	<button ng-click="upateSign(item)"  data-toggle="modal" data-target="#myModal" type="button" class="btn btn-info " data-toggle="modal" data-target="#myModal">查看详细
            		</button>
           		</td>
           		<td width:10% style="text-align:center">
                	<button ng-click="upd(item)"  type="button" class="btn btn-warning " data-toggle="modal" data-target="#myModalUp">更新
            		</button>
           		</td>
                <td width:10% style="text-align:center">
                	<button ng-click="del(item)"  type="button" class="btn btn-warning " >删除
            		</button>
           		</td>
   
              </tr>
          </table>
		</div>
	</div>
	
</div>

<form class="form-horizontal" style="display:inline-block" >
           
        <!-- Modal -->
        <div class="modal fade" id="myModalUp" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
          <div class="modal-dialog" role="document">
            <div class="modal-content">            
              <div class="modal-body">
                <div class=" row ">
	    <div class="panel panel-info col-xs-10 col-md-10" style="padding:0;margin-left:15px;">
	  <!-- Default panel contents -->
		 
		  			<input ng-model="te.name" style="width:100%;padding:10px;"/>
		  		
		</div>
	</div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" data-dismiss="modal"  class="btn btn-primary" ng-click="save()">提交</button>
              </div>
            </div>
          </div>
        </div>
      </form>

<form class="form-horizontal" style="display:inline-block" >
           
        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-body">
                <div class=" row ">
	    <div class="panel panel-info col-xs-10 col-md-10" style="padding:0;margin-left:15px;">
	  <!-- Default panel contents -->
		  <ul class="list-group addItems">
		  		<li class="list-group-item" ng-repeat="i in test">
		  			{{i.txt}}
		  		</li>
		  		
		  </ul>
		</div>
	</div>
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
teacherTest.controller('testFi', function($scope,$http){
  
  $scope.data;
  
  $http({
  	method: 'GET',
  	params:{"sno":<%=u.getSno() %>},
  	url: 'teacher_findTestById.action'}).
  	success(function(data) {
    	$scope.data=data;
  });
  
 
	  
 //选择操作的题目
 $scope.checked;
 
 $scope.test;
 
  $scope.upateSign=function(item){
	  //for(var i in item.ids){
  		
  		$scope.checked =item.ids;
  		/* if(i!=item.ids.length-1){
  			$scope.checked +=",";
  		} */
  	//}
	  $http({
		  	method: 'GET',
		  	params:{"types":$scope.checked},
		  	url: 'teacher_searchTest.action'}).
		  	success(function(data) {
	    	    $scope.test=data;		  
		});
  }
 
  $scope.te;
  $scope.upd=function(itm){
	  $scope.te=itm;
  }
  $scope.save=function(){
	  $.ajax({
			url:"teacher_updateBytest.action",
			type:"post",
			dataType:"json",
			data:{"id": $scope.te.id,
				"types":$scope.checked,
				"txt": $scope.te.name
				},
			success:function(msg){
				alert("更新成功");
			}
		});
  }
  $scope.del=function(item){
	  $.ajax({
			url:"teacher_deleteBytest.action",
			type:"post",
			dataType:"json",
			data:{"id":item.id},
			success:function(msg){
				alert("删除成功");
			}
		});
  }  
})
</script>
</body>
</html>
