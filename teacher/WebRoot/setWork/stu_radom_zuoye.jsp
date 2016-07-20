<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../css/common/bootstrap.min.css" rel="stylesheet">
<script src="../js/common/jquery-2.1.3.min.js"></script>
<script src="../js/common/bootstrap.min.js"></script>
<title>随机生成作业</title>
</head>
<body ng-app="teachRadomApp" ng-controller="testRadom">
<div class="container-fluid " style="padding:0 70px;" >
<div class="panel panel-primary" id="selectText">
  <div class="panel-heading">单项选择题</div>
  <div class="panel-body">
    <div class="selectTextList">
    	<ol>
    		<li ng-repeat="item in data | filter : {types : 1}  ">
    			<h5>{{item.txt}}</h5>
    		<div class="radio">
    			<label>
    				<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">{{item.idx_1}}</label></div>
            <div class="radio"><label><input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
            {{item.idx_2}}</label></div>
            <div class="radio"><label><input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
            {{item.idx_3}}</label></div>
            <div class="radio"><label><input type="radio" name="optionsRadios" id="optionsRadios4" value="option4">
            {{item.idx_4}}</label></div>
    		</li>
    		
    	</ol>
    </div>
  </div>
</div>
  <div class="panel panel-primary" id="selectText">
  <div class="panel-heading">多项选择题</div>
  <div class="panel-body">
    <div class="selectTextList">
    	<ol>
    		<li ng-repeat="item in data | filter : {types : 2}  ">
    			<h5>{{item.txt}}</h5>
    		<div class="radio">
    			<label>
    				<input type="checkbox" name="optionsRadios" id="optionsRadios1" value="option1">{{item.idx_1}}</label></div>
            	<div class="radio"><label><input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">
            {{item.idx_2}}</label></div>
            <div class="radio"><label><input type="checkbox" name="optionsRadios" id="optionsRadios3" value="option3">
            {{item.idx_3}}</label></div>
            <div class="radio"><label><input type="checkbox" name="optionsRadios" id="optionsRadios4" value="option4">
            {{item.idx_4}}</label></div>
            <div class="radio"><label><input type="checkbox" name="optionsRadios" id="optionsRadios3" value="option3">
            {{item.idx_3}}</label></div>
            <div class="radio"><label><input type="checkbox" name="optionsRadios" id="optionsRadios4" value="option4">
            {{item.idx_4}}</label></div>
    		</li>
    	</ol>
    </div>
  </div>
</div>

  <div class="panel panel-primary" id="simple">
  <div class="panel-heading">简答题</div>
  <div class="panel-body">
  <ol>
  <li ng-repeat="item in data | filter : {types : 3}">
  	 <h5>{{item.txt}}</h5>
    <textarea class="form-control" rows="5"></textarea>
  </li>
  </ol>
  </div>
</div>
</div>
</body>
<script type="text/javascript" src="../js/common/angular.js"></script>
<script type="text/javascript">
var teacherTest = angular.module('teachRadomApp', ['ng']);
teacherTest.controller('testRadom', function($scope,$http){
	$scope.data;
    $http({
    	method: 'GET',
    	params:{"idx_1":"100"},
    	url: 'teacher_findSelect.action'}).
    	success(function(data) {
      	$scope.data=data;
    
    });
})		
</script>
</html>