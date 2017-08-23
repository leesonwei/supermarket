/**
 * manager control js
 * date:20170612
 */		 		

/*显示添加用户模态框*/

$('.form_date').datetimepicker({
    language:  'rs-latin',
    weekStart: 1,
    todayBtn:  1,
	autoclose: 1,
	todayHighlight: 1,
	startView: 2,
	minView: 2,
	forceParse: 0
});
$(document).ready(function(){
	$("#userCode").blur(function(){
		var name=this.value;
		if(name==""){
			$("#userCode").val("昵称不能为空");
			$("#userCode").css("border-color","#ff5500");
		}else{
			$.ajax({
				url:contextPath+"user",
				method:"post",
				data:{op:"checkUser",name:name},
				success:callBack
			});
			function callBack(data){
				if(data　==　"true"){
					$("#userCode").val("昵称"+name+"已被使用");
					$("#userCode").css("border-color","#ff5500");
					$(".mysubmit").addClass("disabled");
				}else{
					$("#userCode").val(name);
					$("#userCode").css("border-color","#ccc");
					$(".mysubmit").removeClass("disabled");
				}
			}
		}
	});
});