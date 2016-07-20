<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../css/common/bootstrap.min.css" rel="stylesheet">
<script src="../js/common/jquery-2.1.3.min.js"></script>
<script src="../js/common/bootstrap.min.js"></script>
<title>任务详情</title>
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

    <!--     <li class="list-group-item" data-toggle="collapse" href="#collapseHelp" aria-expanded="false" aria-controls="collapseHelp">
          <strong>Java语言</strong>
        </li>
        <li class="list-group-item" data-toggle="collapse" href="#collapseHelp" aria-expanded="false" aria-controls="collapseHelp">
          <strong>C语言课程设计</strong>
        </li> -->
      </ul>
    </div>
  </div>
<div class="col-md-9">
<div class="row">
  <caption>
          <h4> 
          <strong>
            任务详情</strong>
            <button style="margin-left:78%" class="btn btn-warn newtitle"  data-toggle="modal" data-target="#myModal" id="addtitle"  type="button">添加</button> 
      	
        </h4>
      </caption>
   <table id="table" class="table table-bordered table-hover" >
  	  <thead>
	      <tr align="center" valign="middle">
	        <td width="30%">标题</td>
	        <td width="50%">内容</td>
	        <td width="20%">操作</td>
	      </tr>
      </thead>
      <tbody>
      	<!-- 
      	  <tr>
	        <th>标题</td>
	        <td>内容</td>
	        <td><button type="button" class="btn btn-info" >删除</button></td>
	      </tr>
	    -->
      </tbody>
    </table>
    </div>
    </div>
    </div>
     <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
                <h4 class="modal-title" id="myModalLabel">新建题目名称</h4>
                <textarea resize:none style="width:40%;resize:none" cols="1" id="tit_name"></textarea>
                <h4 class="modal-title" id="myModalLabel">新建题目内容</h4>
              </div>
              
              <div class="modal-body">
        
                <textarea resize:none style="width:100%;resize:none" cols="3" id="tit_content"></textarea>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" >取消</button>
                <button type="button" class="btn btn-primary" id="savedis">保存</button>
              </div>
            </div>
          </div>
        </div>
    <script>
   		(function(){
   			var url = location.search;
   			var dot = url.indexOf('=')+1;
   			var id = url.substr(dot);
			
   			$.ajax({
   				url:"titleplan_lookDetailTitleToTask.action",
				type:"post",
				dataType:"json",
				data:{t_id:id},
				success:function(data){
					getStr(data);
				},
				error:function(){
					alert('服务器链接失败，请刷新后再试！');
				}
   			});
   			
   			function getStr(data){
   				var str = '';
   				for(var i=0 ; i<data.length ; i++){
   					str += ''+
	   					  '<tr>'+
		   			        '<th>'+data[i].tit_name+'</td>'+
		   			        '<td>'+data[i].tit_content+'</td>'+
		   			     	'<td align="centen" valign="middle"><button style="margin-left:50px" class="btn btn-warn detele" data-mark="'+data[i].tit_id+'" type="button">删 除</button></td>'+
		   			   
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
   	   			var id = $(this).attr('data-mark');
   	   			console.log(id);
   	   			$.ajax({
	   	   			url:"titleplan_deleteTitlePlan.action",
	   	   			type:'post',
	   	   			dataType:'json',
	   	   			data:{"tit_id":id},
	   	   			success:function(data){
	   	   				if(data.status != 0){
	   	   					window.location.reload();
	   	   				}
	   	   			},
	   	   			error:function(){
	   	   				alert('链接服务器失败，请刷新后再试！');
	   	   			}
   	   			})
   	   		})
  		$("#savedis").click(function(){
  			var map={};
  			map.tit_name=$("#tit_name").val();
  			map.tit_content=$("#tit_content").val();
  			map.t_id=id;
  			$.ajax({
   	   			url:"titleplan_addTitle.action",
   	   			type:'post',
   	   			dataType:'json',
   	   			data:map,
   	   			success:function(data){
   	   				if(data.status != 0){
   	   					window.location.reload();
   	   				}
   	   			},
   	   			error:function(){
   	   				alert('链接服务器失败，请刷新后再试！');
   	   			}
	   			})
  		});
			
   			
   		})()
   		
   		
   		
   		
   	</script>
</body>
</html>
