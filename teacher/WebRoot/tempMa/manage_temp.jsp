<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../css/common/bootstrap.min.css" rel="stylesheet">
<script src="../js/common/jquery-2.1.3.min.js"></script>
<script src="../js/common/bootstrap.min.js"></script>
<title>模板管理</title>
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
	<div class="col-md-10">
         <form id="f1" action="" method="">
	          <select id="gradName" name="grad" class="select form-control" onchange=doChange() >
		          <option value="">---请选择模板类型---</option>
		          <option value="0">公有</option>
		          <option value="1">私有</option>
		          <option value="3">全部</option>
	          </select>
         </form>
            
	 </div>
 	<div class="col-md-2" style="padding:0">
 	<a id="index-btn" href="set_temp.html" class="btn btn-success " style="margin-left:0px;margin-bottom:10px;">新建模板</a>
 	</div>
  
<div class="col-md-10">
    <table id="table"  class="table table-bordered table-hover" >
    	<thead>
		   <tr class="info">
	   			<th>课程</th>
	   			<th>名称</th>
	   			<th>类别</th>
	   			<th>日期</th>
	   			<th>分组</th>
	   			<th>详情</th>
	   			<th>删除</th>
	   			<th>添加任务</th>
	   			<th></th>
	   		</tr>
	   	</thead>
	   	<tbody>
	   	<!-- 
	   		<tr >
	   			<td>软件工程</td>
	   			<td>实验1</td>
	   			<td>公有</td>
	   			<td>2015-08-01</td>
	   			<td>是</td>
	   			<td><a class="btn btn-default " href="temp_detail.jsp" target="_blank">查看详细</a></td>
	   			<td><a class="btn btn-warning " >删除</a></td>
	   			<td><a class="btn btn-info" href="temp_up.jsp">添加</a></td>
	   			<td><a class="btn btn-info" href="../teachPlan/teachPlan.jsp">添加至课程</a></td>
	   		</tr>
	   	 -->
   		</tbody>
	</table>
</div>
</div>
</div>
</div>
<script>
	(function(){
		$.ajax({
			url:"model_selectCourseLIst.action",
			type:"post",
			dataType:"json",
			data:{},
			success : function(data){
				getStr(data);
			},
			error : function(){
				alert('链接数据库失败，请刷新后再试');
			}
		})
		 
		function getStr(data){
			var str = '';
			for(var i=0;i<data.length;i++){
				str += ''+
				'<tr >'+
	   			'<td>'+ data[i].m_course + '</td>'+
	   			'<td>'+data[i].m_name+'</td>'+
	   			'<td>'+data[i].m_class+'</td>'+
	   			'<td>'+getDate(data[i].m_date)+'</td>'+
	   			'<td>'+data[i].m_statu+'</td>'+
	   		 
	   			'<td><a class="btn btn-default " target="_self" href="temp_detail.jsp?m_id='+data[i].m_id+'" target="_blank">查看详细</a></td>'+
	   			'<td><a class="btn btn-warning detele" data-id="'+ data[i].m_id +'" >删除</a></td>'+
	   			'<td><a class="btn btn-info" href="set_task.jsp?id='+data[i].m_id+'">添加</a></td>'+
	   				'<td><a id="addFile" class="btn btn-info" data-id="'+ data[i].m_id +'" href="javaScript:void(0)" target="_blank">添加至课程</a></td>'+
	   		'</tr>'; 
			}
			innerHtml(str);
		}
		
		function innerHtml(str){
			if(!$('#table>tbody>tr').get(0)){
				$('#table>tbody').html(str);
			} else {
				$('#table>tbody>tr:last').after(str);
			}
		}
		
		function getDate(m){
			var date = new Date(m);
			return date.getFullYear() + '-'+ date.getMonth()+ '-' + date.getDay();
		}
		
		
		$('#table').on('click', '.detele' ,function(){
			var id = $(this).attr('data-id');
			$.ajax({
				url:"model_deleteModel.action",
				type:"post",
				dataType:"json",
				data:{m_id:id},
				success : function(){
					alert('删除成功！');
					window.location.reload();
				},
				error : function(){
					alert('服务器连接失败，请刷新后再试！');
				}
			})
		})
		
		$('#table').on('click', '#addFile' ,function(){
			var id = $(this).attr('data-id');
			$.ajax({
				url:"model_addToPlan.action",
				type:"post",
				dataType:"json",
				data:{m_id:id},
				success : function(){
					alert('添加成功！');
				},
				error : function(){
					alert('服务器连接失败，请刷新后再试！');
				}
			})
		})
		
		
	})()
</script>
</body>
</html>
