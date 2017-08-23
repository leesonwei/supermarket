/**
 * user control js
 * date:20170612
 */
		
		$("#submitButton").click(function(){
			var userCode=$("#userCode").val();
			var password=$("#userPassword").val();
			$("#submitButton").attr("value","开始登陆...");
			$.ajax({
				url:contextPath+"/user/doLogin.html",
				method:"post",
				dataType:"json",
				data:{userCode:userCode,userPassword:password},
				success:showInfo,
				error:function(dataObject){
					$("div.modal-body").html(dataObject.info);
					$("#myModalLabel").html("登录信息");
					$("#submitButton").attr("value","登陆");
					$("#myModal").modal({keyboard:true});
				}
			});
			function showInfo(data){
				if(data.result=="true"){
					window.location.href=contextPath+"/user/main.html";
				}else{
					$("div.modal-body").html(data.info);
					$("#myModalLabel").html("登录信息");
					$("#submitButton").attr("value","登陆");
					$("#myModal").modal({keyboard:true});
				}
			};
		});
