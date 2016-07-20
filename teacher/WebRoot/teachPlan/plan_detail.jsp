<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../css/common/bootstrap.min.css" rel="stylesheet">
<script src="../js/common/jquery-2.1.3.min.js"></script>
<script src="../js/common/bootstrap.min.js"></script>
<title>计划详情</title>
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
<div class="row">
   <caption>
          <h4> 
          <strong>
            计划详情</strong> 
        </h4>
      </caption>
   <table id="table"  class="table table-bordered table-hover" >
      <thead>
     	  <tr align="center" valign="middle" style="text-align:center">
	        <td>任务序号</td>
	        <td>任务名称</tD>
	        <td>查看详情</td>
	        <td>删除</td>
	      </tr>
      </thead>
      <tbody>
      	<!-- 
	      <tr align="center" valign="middle">
	        <td>任务1</td>
	        <td>任务名称</td>
	        <td><a class="btn btn-info" href="../tempMa/task_detail.jsp">任务详情</a></td>
	        <td><button type="button" class="btn btn-info" >删除</button></td>
	      </tr>
	      -->
      </tbody>
      
    </table>
    </div>
    </div>
    </div>
   	
   	<script>
   		(function(){
   			
   			var url = location.href;
   			console.log(url);
   			var dot = url.indexOf('=')+1;
   			var id = url.substr(dot);
			
   			$.ajax({
   				url:"eduplan_lookDetailTaskToEduplan.action",
				type:"post",
				dataType:"json",
				data:{m_id:id},
				success:function(data){
					getStr(data);
				},
				error:function(){
					alert('服务器链接失败，请刷新后再试！');
				}
   			})
   			
   			function getStr(data){
   				var str = '';
   				for(var i=0 ; i<data.length ; i++){
   					str += ''+
		   				'<tr align="center" valign="middle">'+
			   		        '<td>'+ data[i].t_order +'</td>'+
			   		        '<td>'+ data[i].t_name +'</td>'+
			   		        '<td><a class="btn btn-info" href="../teachPlan/p_detail.jsp?id='+data[i].t_id+'">任务详情</a></td>'+
			   		        '<td><button class="detele" type="button" class="btn btn-info" data-id="'+ data[i].t_id +'">删除</button></td>'+
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
   			
   			
   			$('#table').on('click','.detele',function(){
   	   			var id = $(this).attr('data-id');
   	   			$.ajax({
   	   				url:'taskToPlan_deleteByTaskToPlan.action',
   	 				type:"post",
   	 				dataType:"json",
   	 				data:{t_id:id},
   	 				success:function(data){
   	 					if(data.status !=0 ){
   	 						window.location.reload();
   	 					}
   	 				},
   	 				error:function(){
   	 					alert('数据库链接失败，请刷新后再试！');
   	 				}
   	   			})
   	   		})
   			
   			
   		})()
   		
   		
   		
   		
   	</script>
   	
</body>
</html>
