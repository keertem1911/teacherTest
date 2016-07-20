<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<link href="../css/common/bootstrap.min.css" rel="stylesheet">
<link href="../js/themes/default/css/umeditor.css" type="text/css" rel="stylesheet">
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
<body>
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
             <tr><td><a href="../stuSelect/view_stu_select.jsp">查看选课学生</a></td></tr>
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

    <div class="showMain row ">
	    <div class="panel panel-info col-xs-10 col-md-10" style="padding:0;margin-left:15px;">
	  <!-- Default panel contents -->
		  <div class="panel-heading" >单选题</div>
		  <ul class="list-group addItems">
		  		<li class="list-group-item">
		  			<div>输入题目</div>
		  			<div><input ng-model="double_tit" type="text" placeholder="输入标题"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>输入题目课程</div>
		  			<div><input ng-model="sign_cours" type="text" placeholder="输入标题"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>A选项</div>
		  			<div><input ng-model="double_A" type="text" placeholder="输入A选项"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>B选项</div>
		  			<div><input ng-model="double_B" type="text" placeholder="输入B选项"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>C选项</div>
		  			<div><input ng-model="double_C" type="text" placeholder="输入C选项"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>D选项</div>
		  			<div><input ng-model="double_D" type="text" placeholder="输入D选项"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>E选项</div>
		  			<div><input ng-model="double_E" type="text" placeholder="输入E选项"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>F选项</div>
		  			<div><input ng-model="double_F" type="text" placeholder="输入F选项"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>输入答案</div>
		  			<div><input ng-model="double_answer" type="text" placeholder="输入答案"/></div>
		  		</li>
		  </ul>
		</div>
	</div>
	
	<div class="showMain row" style="display:none">
	    <div class="panel panel-info col-xs-10 col-md-10" style="padding:0;margin-left:15px;">
	  <!-- Default panel contents -->
		  <div class="panel-heading" >多选题</div>
		  <ul class="list-group addItems">
		  		<li class="list-group-item">
		  			
		  		</li>
		  		
		  </ul>
		</div>
	</div>
	<div id="showMain" class="showMain row" style="display:none">
	    <div class="panel panel-info col-xs-10 col-md-10" style="padding:0;margin-left:15px;">
	  <!-- Default panel contents -->
	    	<div class="panel-heading" >简答题</div>		
		</div>
     
      
    </div>
    <div id="showMain" class="showMain row" style="display:none">
	    <div class="panel panel-info col-xs-10 col-md-10" style="padding:0;margin-left:15px;">
	  <!-- Default panel contents -->
	    	<div class="panel-heading" >上机题</div>		
		</div>
     
      
    </div>
  </div>


<div >




</div>
</div>
<script type="text/javascript" src="../js/common/angular.js"></script>
<script type="text/javascript">

var teacherTest = angular.module('teachApp', ['ng']);
teacherTest.controller('zuoyeUd', function($scope,$http){
  
  
  
 
})
</script>
</body>
</html>
