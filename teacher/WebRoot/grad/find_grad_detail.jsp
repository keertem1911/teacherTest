
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../css/common/bootstrap.min.css" rel="stylesheet">
<script src="../js/common/jquery-2.1.3.min.js"></script>
<script src="../js/common/bootstrap.min.js"></script>
<title>查询成绩</title>
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
		<div class="row">
	       <div class="form-group">
      <label class="col-sm-2 control-label">小组名:</label>
      <div class="col-sm-10">
        <p id="name" class="form-control-static">iTshow</p>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-2 control-label">项目名:</label>
      <div class="col-sm-10">
        <p id="pname" class="form-control-static">software</p>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-2 control-label">小组描述:</label>
      <div class="col-sm-10">
        <p id="dec" class="form-control-static">我们小组共有10人。我们的项目是软件工程教学平台</p>
      </div>
    </div>
  </div>
    
   <table id="set_workView" class="table table-bordered table-hover">
   		<thead>
          <tr class="info">
            <th>成员</th>
            <th>姓名</th>
            <th>完成工作 </th>
            <th>实验报告</th>
            <th>成绩 </th>
          </tr>
        </thead>
        <tbody>
        <!-- 
          <tr>
            <td>组长</td>
            <td>李欢</td>
            <td>实现对实践教学全过程的跟踪、追溯、考核、交流和管理功能，并提供丰富的在线学习资源。 </td>
          	<td><button type="button" class="btn btn-primary btn-warning" >下载</button></td>
          	<td>89</td>
          </tr>
         <tr>
            <td>组员</td>
            <td>李欢</td>
            <td>实现对实践教学全过程的跟踪、追溯、考核、交流和管理功能，并提供丰富的在线学习资源。 </td>
          	<td><button type="button" class="btn btn-primary btn-warning" >下载</button></td>
          	<td>89</td>
          </tr>
         -->
         </tbody>
      </table>
		</div>
	</div>

<script>

   		(function(){
   			
   			var url = location.search;
   			var dot = url.indexOf('=')+1;
   			var id = url.substr(dot,1);
			
   			$.ajax({
   				url:"group_findGroupById.action",
				type:"post",
				dataType:"json",
				data:{"g_id":id},
				success:function(data){
					getStr(data);
				},
				error:function(){
					alert('服务器链接失败，请刷新后再试！');
				}
   			})
   			
   			function getStr(data){
   				console.log(data);
   				var str = '';
   				
   					str += ''+
	   					 '<tr>'+
		   		            '<td>组长</td>'+
		   		            '<td>'+data.g_headName+'</td>'+
		   		            '<td>'+data.g_headdo+'</td>'+
		   		                '<td><a class="btn btn-info btn-xs" href="../file/'+data.g_id+'.doc">下载</a></td>'+
		   		          	'<td>'+ (data.g_score-' ') +'</td>'+
		   		          '</tr>';
   				console.log(str);
   				innerHtml(str);
   				$('#name').html(data.g_name);
   				$('#pname').html(data.g_pname);
   				$('#dec').html(data.g_describ);
   			}
   			
   			function innerHtml(str){
   				if(!$('#set_workView>tbody>tr').get(0)){
   					$('#set_workView>tbody').html(str);
   				} else {
   					$('#set_workView>tbody>tr:last').after(str);
   				}
   			}
   			
   		})()
   		
   		
   		
   		
   		
 </script>


</body> 
</html>