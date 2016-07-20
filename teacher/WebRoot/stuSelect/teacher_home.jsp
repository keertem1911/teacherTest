<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<link href="../css/common/bootstrap.min.css" rel="stylesheet">
<script src="../js/common/jquery-2.1.3.min.js"></script>
<script src="../js/common/bootstrap.min.js"></script>
<title>教师端</title>
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
  .course{
    padding-left:1%;
    display: inline;
    font-size: 0.2em;
  }
</style>
</head>
<body >

<%@ include file="../tmpl/header.jsp" %>


<div class="row" style="padding:80px 20px">
	<div class="col-md-1"></div>
	<div class="col-md-10"   id="content">
      <div class="container-fluid">
        <div class="row-fluid">
          <div class="span12">
            <ul class="nav nav-tabs" style="margin-bottom:20px">
            <%
          				List<Course> course=(List)session.getAttribute("course");
    	
    					for(int i=0;i<courses.size();++i){
    						if(i==0){
    						%><li class="active"><a href="#"><%=courses.get(i).getC_name() %></a></li>
            						<li class="divider"></li><%
    						}else{
    						%><li><a href="#"><%=courses.get(i).getC_name() %></a></li>
            						<li class="divider"></li>
    						<% }
    					}
          %>
           <!--    <li class="active">
                <a href="#">软件工程</a>
              </li>
              <li>
                <a href="#">Java</a>
              </li>
              <li>
                <a href="#">UML统一建模语言</a>
              </li>
              <li>
                <a href="#">Java</a>
              </li>
              <li>
                <a href="#">UML统一建模语言</a>
              </li>
              <li>
                <a href="#">Java</a>
              </li>
              <li>
                <a href="#">UML统一建模语言</a>
              </li>
              <li class="dropdown pull-right">
                 <a href="#" data-toggle="dropdown" class="dropdown-toggle">其他课程<strong class="caret"></strong></a>
                <ul class="dropdown-menu">
                  <li>
                    <a href="#">计算机组成原理</a>
                  </li>
                  <li>
                    <a href="#">Java</a>
                  </li>
                  <li class="divider">
                  </li>
                  <li>
                    <a href="#">更多课程</a>
                  </li>
                </ul>
              </li> -->
            </ul>
          </div>
        </div>
      
	

  <div class="row">
      <div class="col-xs-6 col-md-4 ">
        <a href="../groupMa/set_group_home.jsp" class="thumbnail"  target="_blank">
          <img src="../images/1.png" alt="">
              <h5>管理实验/作业小组</h5>
        </a>
      </div>
      <div class="col-xs-6 col-md-4 ">
        <a href="../setWork/set_test.jsp" class="thumbnail"  target="_blank">
          <img src="../images/1.png" alt="">
              <h5>实验题目管理</h5>
        </a>
      </div>
      <div class="col-xs-6 col-md-4 " >
         <a href="../teachPlan/teachPlan.jsp" class="thumbnail" target="_blank">
          <img src="../images/1.png" alt="">
              <h5>实践教学计划</h5>
        </a>
      </div>
    </div>
    <div class="row">  
      <div class="col-xs-6 col-md-4 ">
         <a href="../grad/setGrad.jsp" class="thumbnail"  target="_blank">
          <img src="../images/1.png" alt="">
              <h5>实验结果、报告和成绩查询</h5>
        </a>
      </div>
      <div class="col-xs-6 col-md-4 ">
         <a href="../testMa/set_test.jsp" class="thumbnail"  target="_blank">
          <img src="../images/2.png" alt="">
              <h5>试卷管理</h5>
        </a>
      </div>
      <div class="col-xs-6 col-md-4 ">
         <a href="../tempMa/manage_temp.jsp" class="thumbnail"  target="_blank">
          <img src="../images/2.png" alt="">
              <h5>模板管理</h5>
        </a>
      </div>
      </div>
      </div>
    </div>
	<div class="col-md-1">
	</div>
</body>
</html> 