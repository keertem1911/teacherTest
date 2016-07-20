
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
<title>添加题目</title>
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


  
  
  <div class="col-md-9 addTest"  ng-app="teachaddApp" ng-controller="addtest">
  <div class="row" style="margin-left:0;margin-bottom:20px;">
	  <a class="link btn btn-success" ng-click="check()" style="margin-right:20px;">单选题</a>
	  <a class="link btn btn-default" ng-click="check()" style="margin-right:20px;">多选题</a>
	  <a class="link btn btn-default" ng-click="check()" style="margin-right:20px;">简答题</a>
  	  <a class="link btn btn-default" ng-click="check()" style="margin-right:20px;">上机题</a>
  </div>
    <div class="showMain row ">
	    <div class="panel panel-info col-xs-10 col-md-10" style="padding:0;margin-left:15px;">
	  <!-- Default panel contents -->
		  <div class="panel-heading" >添加单选题</div>
		  <ul class="list-group addItems">
		  		<li class="list-group-item">
		  			<div>输入题目</div>
		  			<div><input ng-model="sign_tit" type="text" placeholder="输入标题"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>输入题目所属课程</div>
		  			<div><input ng-model="sign_cours" type="text" placeholder="输入标题"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>A选项</div>
		  			<div><input ng-model="sign_A" type="text" placeholder="输入A选项"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>B选项</div>
		  			<div><input ng-model="sign_B" type="text" placeholder="输入B选项"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>C选项</div>
		  			<div><input ng-model="sign_C" type="text" placeholder="输入C选项"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>D选项</div>
		  			<div><input ng-model="sign_D" type="text" placeholder="输入D选项"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>输入答案</div>
		  			<div><input ng-model="sign_answ" type="text" placeholder="输入答案"/></div>
		  		</li>
		  </ul>
		</div>
		<div class="col-xs-2 col-md-2 ">
           <button ng-click="addSign()" style="width:80px;" type="button" class="btn btn-info " >添加            
           </button>
      </div>
	</div>
	
	<div class="showMain row" style="display:none">
	    <div class="panel panel-info col-xs-10 col-md-10" style="padding:0;margin-left:15px;">
	  <!-- Default panel contents -->
		  <div class="panel-heading" >添加多选题</div>
		  <ul class="list-group addItems">
		  		<li class="list-group-item">
		  			<div>输入题目</div>
		  			<div><input ng-model="double_tit" type="text" placeholder="输入标题"/></div>
		  		</li>
		  		<li class="list-group-item">
		  			<div>输入题目课程</div>
		  			<div><input ng-model="double_cours" type="text" placeholder="输入标题"/></div>
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
		<div class="col-xs-2 col-md-2 ">
           <button ng-click="addouble()" style="width:80px;" type="button" class="btn btn-info " >添加
           
           </button>
      </div>
	</div>
	<div  class="showMain row" style="display:none">
	    <div class="panel panel-info col-xs-10 col-md-10" style="padding:0;margin-left:15px;">
	  <!-- Default panel contents -->
	    <div class="panel-heading" >添加简答题</div>
	    <div style="margin:15px;width:80%">
  			<div>输入所属课程</div>
  			<div><input ng-model="edit_course" type="text" placeholder="输入课程"/></div>
  		<div>
	    <p style="margin:15px;">输入简答题目</p>
	    <div id="editor_ques" style="height:100px;">
	    </div>
	    </br>
	    <p>输入简答答案</p>
	  	<div id="editor_anws" style="height:100px"></div>
		</div>
		</div>
		
		<div class="col-xs-2 col-md-2 ">
           <button ng-click="addEdit()" style="width:80px;" type="button" class="btn btn-info " >添加
           
           </button>
		</div>
	</div>
    </div>
    <div  class="showMain row" style="display:none">
	    <div class="panel panel-info col-xs-10 col-md-10" style="padding:0;margin-left:15px;">
	  <!-- Default panel contents -->
	    <div class="panel-heading" >添加上机题</div>
	    <div style="margin:15px;width:80%">
  			<div>输入所属课程</div>
  			<div><input ng-model="editTe_course" type="text" placeholder="输入课程"/></div>
  		<div>
	    <p style="margin:15px;">输入上机题目</p>
	    <div id="editorTe_ques" style="height:100px;">
	    </div>
	    </br>
	    <p>输入上机答案</p>
	  	<div id="editorTe_anws" style="height:100px"></div>
		</div>
		
		</div>
      <div class="col-xs-2 col-md-2 ">
           <a ng-click="addEditTe()" style="width:80px;color: #fff;background-color: #5bc0de;border-color: #46b8da;padding-top: 10px;text-align: center;padding-bottom: 10px;border-radius: 4px;display:block"  >添加
           </a>
      </div>
    </div>
	
  </div>
	
</div>
<script type="text/javascript" src="../js/common/angular.js"></script>
    
<script type="text/javascript" src="../js/third-party/jquery.min.js"></script>
<script type="text/javascript" charset="utf-8" src="../js/umeditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="../js/umeditor.min.js"></script>
<script type="text/javascript" src="../js/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">

  var teacherTest = angular.module('teachaddApp', ['ng']);
  teacherTest.controller('addtest', function($scope,$http){
    $('.link').click(function(){
    	$('.link').attr('class','link btn btn-default');
    	$(this).attr('class','link btn btn-success');
    	var index = $(this).index();
    	$('.showMain').hide().eq(index).show();
    })
	
    $scope.que=UM.getEditor('editor_ques').getContent();
    $scope.ans=UM.getEditor('editor_anws').getContent();
    
    $scope.editorTe_ques=UM.getEditor('editorTe_ques').getContent();
    $scope.editorTe_anws=UM.getEditor('editorTe_anws').getContent();
    
    $("#editor_ques").on("blur",function(){
    	alert(UM.getEditor('editor_ques').getContent());
    })
    
    $scope.edit_course;
        
   		$scope.sign_answ;
   		$scope.sign_cours;
   		$scope.sign_A;
   		$scope.sign_B;
   		$scope.sign_C;
   		$scope.sign_D;
   		$scope.sign_tit;
   		
   		$scope.double_answ;
   		$scope.double_cours;
   		$scope.double_A;
   		$scope.double_B;
   		$scope.double_C;
   		$scope.double_D;
   		$scope.double_E;
   		$scope.double_F;
   		$scope.double_tit;
   		
    
    $scope.addSign=function(){
    	alert($scope.sign_answ);
    	$.ajax({
			url:"teacher_addQuestion.action",
			type:"post",
			dataType:"json",
			data:{
		   		"answer":$scope.sign_answ,
		   		"course":$scope.sign_cours,
		   		"idx_1":$scope.sign_A,
		   		"idx_2":$scope.sign_B,
		   		"idx_3":$scope.sign_C,
		   		"idx_4":$scope.sign_D,
		   		"txt":$scope.sign_tit,
		   		"types":"1",
		   		"sno":<%=u.getSno() %>
		   	},
			success:function(msg){
				alert("添加成功");
			}
		});
    }
    
    $scope.addouble=function(){
    	$.ajax({
			url:"teacher_addQuestion.action",
			type:"post",
			dataType:"json",
			data:{
		   		"answer":$scope.double_answ,
		   		"course":$scope.double_cours,
		   		"idx_1":$scope.double_A,
		   		"idx_2":$scope.double_B,
		   		"idx_3":$scope.double_C,
		   		"idx_4":$scope.double_D,
		   		"idx_5":$scope.double_E,
		   		"idx_6":$scope.double_F,
		   		"txt":$scope.double_tit,
		   		"types":"2",
		   		"sno":<%=u.getSno() %>
		   	},
			success:function(msg){
				alert("添加成功");
			}
		});
    }
    
    
    $scope.addEdit=function(){
    	$.ajax({
			url:"teacher_addQuestion.action",
			type:"post",
			dataType:"json",
			data:{
		   		"answer":UM.getEditor('editor_anws').getContent(),
		   		"course":$scope.edit_course,
		   		"txt":UM.getEditor('editor_ques').getContent(),
		   		"types":"3",
		   		"sno":<%=u.getSno() %>
		   	},
			success:function(msg){
				alert("添加成功");
			}
		});
    }
    
    $scope.addEditTe=function(){
    	$.ajax({
			url:"teacher_addQuestion.action",
			type:"post",
			dataType:"json",
			data:{
		   		"answer":UM.getEditor('editorTe_anws').getContent(),
		   		"course":$scope.editTe_course,
		   		"txt":UM.getEditor('editorTe_ques').getContent(),
		   		"types":"4",
		   		"sno":<%=u.getSno() %>
		   	},
			success:function(msg){
				alert("添加成功");
			}
		});
    }
    
  })
</script>
</body>
</html>
