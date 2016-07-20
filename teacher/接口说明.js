//根据 教学计划的任务 查询 小组信息
$.ajax({
				url:"taskToPlan_findGroupsByTask.action",
				type:"post",
				dataType:"json",
				data:{"t_id":28},
				success:function(msg){
				 console.log(msg);
				}
			});