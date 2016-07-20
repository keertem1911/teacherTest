<%@page import="empties.Course"%>
<%@page import="java.util.List"%>
<%@page import="empties.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-default navbar-fixed-top">
 
	<a class="navbar-brand" href="#" style="padding:1px 10px">
     <img alt="Brand" src="./images/common/logo.jpg" style="width:50px;height:50px">
    </a>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">课 程<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
          <%
          				List<Course> courses=(List)session.getAttribute("course");
    					for(int i=0;i<courses.size();++i){
    						%><li><a href="#"><%=courses.get(i).getC_name() %></a></li>
            						<li class="divider"></li>
    						<% 
    					}
          %>
            <!-- <li><a href="#">软件工程</a></li>
            <li class="divider"></li>
            <li><a href="#">Java语言</a></li>
            <li class="divider"></li>
            <li><a href="#">C语言课程设计</a></li>
            <li class="divider"></li>
            <li><a href="#"><其他课程></a></li> -->
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">模 板<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">实验模板</a></li>
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

<div class="col-md-1"></div>
<div class="col-md-10"   id="content">
          <div class="container-fluid">
          <div class="row-fluid">
            <div class="span12">
              <ul class="nav nav-tabs" style="margin-bottom:20px">
                <li class="active">
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
                </li>
              </ul>
            </div>
          </div>
        </div>