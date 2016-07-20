<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../css/common/bootstrap.min.css" rel="stylesheet">
<script src="../js/common/jquery-2.1.3.min.js"></script>
<script src="../js/common/bootstrap.min.js"></script>
<title>新建任务</title>
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
   <form id="f1" action="" method="">
			<table class="table table-bordered table-hover" style="margin-top:2%;border:none;">
				<caption style="text-align">
					<h5> <strong>新建任务</strong>
					</h5>
				</caption>
				<tr style="border:none;">
					<th style="border:none;">序号
				</th>
				<td style="border:none;">
					<input id="t_order" type="text"></td>
			</tr>
			<tr>
				<th style="border:none;">名称</th>
				<td style="border:none;">
					<input id="t_name" type="text" ></td>
			</tr>

			<tr>
				<th style="border:none;">任务说明</th>
				<td style="border:none;">
					<div class="form-group">
						<textarea id="tea" class="form-control" style="resize:none" rows="3"></textarea>
					</div>
				</td>
			</tr>
			<!-- 
			<tr>
				<th style="border:none;">附件</th>
				<td style="border:none;">
					<form id="submitF" action="" method="post" enctype="multipart/form-data">
						<label  for="file">文件名:</label>
						<input  class="submit" type="file" name="file" id="file" />
						<br />
					</form>
				</td>
			</tr>
			 -->
			<tr >
				<td  colspan="2" style="text-align:center;border:none">
					<button id="submit" type="button" class="btn btn-primary">确定</button>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button id="reset" type="reset" class="btn btn-warning">重置</button>
				</td>
			</tr>
		</table>
	</form>
    </div>
    </div>
    </div>
   	
   	<script>
   	(function(){
   		
   	
   		var url = location.search;
		var dot = url.indexOf('=')+1;
		var id = url.substr(dot,1);
		
   		$('#submit').click(function(){
   			var t_order = $('#t_order').val()?$('#t_order').val():false;
   			var t_name = $('#t_order').val()?$('#t_order').val():false;
   			var t_detail = $('#t_order').val()?$('#t_order').val():false;
   			if(t_order && t_name && t_detail){
   				$.ajax({
   					url:"taskToModel_addTaskToModel.action",
   					type:"post",
   					dataType:"json",
   					data:{'m_id':id,'t_order':t_order,'t_name':t_name,'t_detail':t_detail},
   					success:function(msg){
   						if(msg.status !=0){
   							alert('添加成功！');
   							window.location.href='/teacher/tempMa/manage_temp.jsp';
   						}
   					},
   					error:function(){
   						alert('服务器连接错误，请刷新后再试！');
   					}
   				})
   			} else {
   				alert('请检查输入项！');
   			}
   		})
   		$('#submit').click(function(){
   			$('#t_order').val('');
   			$('#t_order').val('');
   			$('#t_order').val('');
   		})
   	})()
   	</script>
   
   
</body>
</html>
