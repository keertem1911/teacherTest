<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../css/common/bootstrap.min.css" rel="stylesheet">
<script src="../js/common/jquery-2.1.3.min.js"></script>
<script src="../js/common/bootstrap.min.js"></script>
<title>模板详情</title>
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
  <div class="col-md-9">
	 <div class="col-md-12">
    <table  class="table table-bordered table-hover" style="margin-top:2%">
      <tr>
        <th  class="info"  colspan="4" style="text-align:center">
          <h5> <strong>模板详情</strong>
          </h5>
        </th>
      </tr>
      <th>课程</th>
      <td>软件工程</td>
      <th>创建时间</th>
      <td>2015-08-01</td>
    </tr>
    <tr>
      <th>类别</th>
      <td>公有</td>
      <th>是否分组</th>
      <td>是</td>
    </tr>
    <tr>
      <th>说明</th>
      <td colspan="3">无日期为客人办法的水果刀市规划局</td>
    </tr>
    <tr>
      <th>备注</th>
      <td colspan="3">无日期为客人办法的水果刀市规划局</td>
    </tr>
  </table>
</div>
<div class="col-md-12">
  <div class="col-md-10" style="display:inline;font-size:16px;"> <strong>任务列表</strong>
  </div>
  <div class="col-md-2" style="padding:0;float:right">
    <a id="index-btn" href="set_task.jsp" class="btn btn-success" style="margin-left:0px;margin-bottom:10px;">
      添加任务
    </a>
  </div>
</div>
<div class="col-md-12">
  <table  class="table table-bordered table-hover" style="margin-top:2%">
    <tr class="success">
      <th>任务序号</th>
      <th>任务名称</th>
      <th>详情</th>
    </tr>
    <tr >
      <td>任务一</td>
      <td>实验</td>
      <td>
        <a class="btn btn-default btn-xs" href="task_detail.html">查看详细</a>
      </td>
    </tr>
    <tr >
      <td>任务一</td>
      <td>实验</td>
      <td>
        <a class="btn btn-default btn-xs" href="task_detail.html">查看详细</a>
      </td>
    </tr>
    <tr >
      <td>任务一</td>
      <td>实验</td>
      <td>
        <a class="btn btn-default btn-xs" href="task_detail.html">查看详细</a>
      </td>
    </tr>

  </table>
</div>
</div>
</body>
</html>
  