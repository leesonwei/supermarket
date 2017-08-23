/**
 * manager control js
 * date:20170612
 */
var userObj;

/*模态框隐藏时清空数据*/
$("#myModal").on("hidden.bs.modal", function() {
    $(this).removeData("bs.modal");
});

/*显示单个用户详情*/
$(".userDetail").click(function (){
	var userObj=$(this);
	var roleTemp;
	$("#myModalLabel2").html("用户"+userObj.attr("userName")+"的详细信息");
	$(".modal-body").html(userDetailModel);
	$.ajax({
		url:contextPath+"/user/userDetail.html/"+userObj.attr("userid"),
		method:"post",
		dataType:"json",
		success:callBack
	});
	function callBack(data){
		//var data=eval("("+dataObject+")");
		$("#userid").val(data.id);
		$("#userCode").val(data.userCode);
		if(data.gender==1){
			$(".gender[value='1']").attr("checked","checked");
		}else{
			$(".gender[value='2']").attr("checked","checked");
		}
		$("#userName").val(data.userName);
		$("#address").val(data.address);
		$("#phone").val(data.phone);
		$("#birthday").val(data.birthday);	
		getRole(data.userRole);
		$("#createdBy").val(data.creatBy);
		$("#creationDate").val(data.creationDate);
		$("#modifyBy").val(data.modifyBy);
		$("#modifyDate").val(data.modifyDate);
	}
	function getRole(roleid){
		$.ajax({
			url:contextPath+"/role/getRole.html/"+roleid,
			method:"post",
			dataType:"json",
			success:function(result){
				$("#userRole").val(result.roleName);
			}
		});
	}
	$("#myModal2").modal({
		keyboard:true
	});
}); 

/*显示删除对话框*/
function showDelete(obj){
	$("#myModalLabel2").html("删除用户");
	$("#myModal2 div.modal-body").html("你确定要删除用户--"+obj+"--吗?");
	$("#myModal2 div.modal-footer button.save").attr("onclick","deleteUser()");
	$("#myModal2").modal({
		keyboard:true
	});
}		

/*执行删除动作*/
function deleteUser(){
	alert("执行删除");
}

/*显示添加用户对话框*/
function showUserAdd(){
	$("#myModal2 #myModalLabel2").html("添加用户");
	$("#myModal2 .modal-body").html(userAddModel);
	getRoles();
	function getRoles(){
		$.ajax({
			url:contextPath+"/role/getRoles.html",
			method:"post",
			dataType:"json",
			success:function(result){
				for(var i=0;i<result.length;i++){
					$("#userRole").append("<option value=\""+result[i].id+"\">"
							+result[i].roleName+"</option>");
				}
			}
		});
	}
	$(".form_date").datetimepicker({
	    language:  'zh-cn',
	    weekStart: 1,
	    todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
	});
	$("#myModal2 div.modal-footer button.save").attr("onclick","saveUser()");
	$("#myModal2").modal({
		keyboard:false,
		backdrop:'static'
	});
}


/*添加用户*/
function saveUser(){
	alert($("#idPic").val());
	$.ajax({
		url:contextPath+"userAddSave.html",
		data:{},
		method:"post",
		success:callBack
	});
	function callBack(){
		
	}
}


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