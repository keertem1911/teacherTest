
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../css/common/bootstrap.min.css" rel="stylesheet">
<script src="../js/common/jquery-2.1.3.min.js"></script>
<script src="../js/common/bootstrap.min.js"></script>
<title>录入和查询成绩</title>
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
	       <table id="grounpView" class="table table-bordered table-hover">
             <thead>
               <tr class="info">
                <th>小组名</th>
                <th>项目名</th>
                <th>组长</th>
                <th>成绩</th>
                <th></th>
              </tr>
              </thead>
              <tbody>
             <!--
              <tr >
                <td>111</td>
                <td>软工教学平台</td>
                <td>李欢</td>
                <td>录入</td>
                <td><a class="btn btn-info btn-xs" href="find_grad_detail.jsp">查看成绩</a></td>
              </tr>
               
              <tr>
                <td>111</td>
                <td>软工教学平台</td>
                <td>李欢</td>
                <td>未录入</td>
                <td><a class="btn btn-info btn-xs" href="set_grad_detail.jsp">录入</a></td>
              </tr>
             -->
              </tbody>
          </table>
		</div>
	</div>
<script>
(function(){
	$.ajax({
		url:"group_selectGroupAll.action",
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
		console.log(data);
		for(var i=0;i<data.length;i++){
			str += ''+
				  '<tr>'+
		            '<td>'+data[i].g_name+'</td>'+
		            '<td>'+data[i].g_pname+'</td>'+
		            '<td>'+data[i].g_headName+'</td>'+
		            '<td>'+data[i].g_statu1+'</td>';
		    if(data[i].g_statu1 == "未入录"){
		    	str +='<td><a class="btn btn-info btn-xs" href="set_grad_detail.jsp?id='+data[i].g_id+'">录入</a></td>'+
		          '</tr>';
		    } else {
		    	str +='<td><a class="btn btn-info btn-xs" href="find_grad_detail.jsp?id='+data[i].g_id+'">查看成绩</a></td>'+
		          '</tr>';
		    }
		            
		}
		innerHtml(str);
	}
	
	function innerHtml(str){
		if(!$('#grounpView>tbody>tr').get(0)){
			$('#grounpView>tbody').html(str);
		} else {
			$('#grounpView>tbody>tr:last').after(str);
		}
	}
	
	
})()
</script>
</body> 
</html>