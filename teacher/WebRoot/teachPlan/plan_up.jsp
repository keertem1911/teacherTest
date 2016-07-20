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
  <form id="f1" action="" method="">
	<table class="table table-bordered table-hover" style="border:none;">

		
	<tr>
		<th>是否分组</th>
		<td><label class="checkbox-inline">
				      <input type="radio" name="optionsRadiosinline" class='radiu' id="optionsRadios3" 
          value="option1" >是
				   </label>
				   <label class="checkbox-inline">
				     <input type="radio" name="optionsRadiosinline" class='radiu' id="optionsRadios3" 
          value="option1" > 否
				   </label></td>
	</tr>
	<tr>
		<th>实验时间</th>
		<td><input type="text" id="date"></td>
	</tr>
	<tr>
		<th>说明</th>
		<td><div class="form-group">
		   			 <textarea id="txa1" class="form-control" style="resize:none" rows="3"></textarea>
		  			</div></td>
	</tr>
	<tr>
		<th>备注</th>
		<td><div class="form-group">
		   			 <textarea id="txa2" class="form-control" style="resize:none" rows="3"></textarea>
		  			</div></td>
	</tr>
	<tr><td colspan="2" style="text-align:center"><button id="submit" type="button" class="btn btn-primary">确定</button>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button type="reset" id="reload" class="btn btn-warning">重置</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="btn btn-success" href="../tempMa/manage_temp.jsp">从模板添加</a></td></tr>
</table>
</form>
    </div>
 </div>  
    <script>
   		(function(){
   			
   			var url = location.search;
   			var dot = url.indexOf('=')+1;
   			var id = url.substr(dot);
			var olddata = null;
   			
   			$.ajax({
   				url:"eduplan_findEduPlanById.action",
				type:"post",
				dataType:"json",
				data:{m_id:id},
				success:function(data){
					setStr(data);
					olddata = data;
				},
				error:function(){
					alert('服务器链接失败，请刷新后再试！');
				}
   			})
   			
   			function setStr(data){
   				if(data.m_statu == '是'){
   					$('.radiu').eq(0).attr('checked','checked');
   				} else {
   					$('.radiu').eq(1).attr('checked','checked');
   				}
   				
   				$('#date').val(getDate(data.m_date));
   				
   				$('#txa1').val(data.m_describ);
   				
   				$('#txa2').val(data.m_remark);
   				
   			}
   			
   			
   			
   			function getDate(m){
   				var date = new Date(m);
   				return date.getFullYear() + '-'+ date.getMonth()+ '-' + date.getDay();
   			}
   			
   			
   			$('#reload').click(function(){
   				setStr(olddata);
   			})
   			
   			$('#submit').click(function(){
   				var data = {};
   				data.m_id = id;
   				data.m_statu = $('.radiu:checked').parent().text().trim();
   				data.m_date = $('#date').val();
   				data.m_describ = $('#txa1').val();
   				data.m_remark = $('#txa2').val();
   				data.m_class = olddata.m_class;
   				
   				$.ajax({
   					url:"eduplan_updateEduPlan.action",
   					type:"post",
   					dataType:"json",
   					data:data,
   					success:function(){
   						window.location.href = '/teacher/teachPlan/teachPlan.jsp','_self';
   					},
   					error:function(){
   					}
   				})
   				
   			})
   			
   		})()
   		
   		
   	</script>
</body>
</html>
