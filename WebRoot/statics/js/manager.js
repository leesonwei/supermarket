/**
 * manager control js
 * date:20170612
 */
var userObj;

$(".userDetail").on("click",function (){
	var obj=$(this);
	alert(obj.userid);
    $("#myModal2").modal({
        remote:contextPath+"/user/userDetail.html?id=12",
		keyboard:true
	});
}); 
		 
$("#myModal").on("hidden.bs.modal", function() {
    $(this).removeData("bs.modal");
});
		

function deleteUser(){
	alert("执行删除");
}

function showDelete(obj){
	$("#myModalLabel2").html("删除用户");
	$("#myModal2 div.modal-body").html("你确定要删除用户--"+obj+"--吗?");
	$("#myModal2 div.modal-footer button.save").attr("onclick","deleteUser()");
	$("#myModal2").modal({
		//remote:"statics/html/reg.html",
		keyboard:true
	});
}

function deleteList(target,id,action){
	var pageNo=$("#currentPage").val();
	if(pageNo==null||pageNo==""){
		pageNo=1;
	}
	$.ajax({
		url:"http://localhost/ssm/"+target,
		method:"post",
		data:{op:action,id:id},
		success:function(data){
			if(data=="true"){
				$(".alert span").html("<strong>信息</strong>删除成功！");
				$(".alert").removeClass("hide");
				showList(target,pageNo,"getUserByPage");
		}
		}
	});
}
function showUserList(){
	/*var pagesize=$("#pageSize").val();
	if(pagesize==null ||pagesize==0){
		pagesize=5;
	}*/
	$.ajax({
		url:contextPath+"/user/userList.html",
		method:"post",
		//data:{op:action,pageNo:pageNo,pageSize:pagesize},
		success:showData
	});
	function showData(data){
		var dataObject=eval("("+data+")");
		var row;
		$("#userTable tr:gt(0)").remove();
		for(var i=0;i<dataObject.length;i++){
			row="<tr><td>"+dataObject[i].userCode+"</td>"
			+"<td>"+dataObject[i].userName+"</td>"
			+"<td>"+dataObject[i].gender+"</td>"
			+"<td>"+dataObject[i].phone+"</td>"
			+"<td>"+dataObject[i].address+"</td>"
			+'<td><a class="detail" href="javascript:void(0)" onclick="showModal('
			+dataObject[i].id+",'"+dataObject[i].userCode+"','"+dataObject[i].userName+"','"
			+dataObject[i].gender+"','"+dataObject[i].phone+"','"+dataObject[i].birthday+"','"+dataObject[i].address+"','"
			+dataObject[i].userRole+"','"+dataObject[i].createdBy+"','"+dataObject[i].creationDate+"','"
			+dataObject[i].modifyBy+"','"+dataObject[i].modifyDate
			+'\')">详情</a>&nbsp;'
			+'<a class="delete" onclick="showDelete(\''+dataObject[i].userName+'\')"'
			+'userId='+dataObject[i]+'>删除</a>'
			+"</td></tr>";
			$("#userTable tr:last").after(row);
		}
	    $("#userTable").removeClass("hide");
	}
}

/*显示添加用户模态框*/

function showUserAdd(){
	$("#myModal").modal({
		remote:contextPath+"/statics/html/reg.html",
		keyboard:true
	});
}


/*保存用户*/
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

function upperCaseWords(word){
	return word.substring(0,1).toUpperCase()+word.substring(1);
}

/**改变搜索框搜索范围的显示*/
function changeAction(action){
	$("#searchform").attr("action",action);
	$("#searchfield").css("width","80px");
	if(action=="order"){
		$("#searchfield").html("订单&nbsp;&nbsp;&nbsp;"+'<span class="caret"></span>');
	}
	if(action=="provider"){
		$("#searchfield").html("供应商&nbsp;"+'<span class="caret"></span>');
	}
	if(action=="user"){
		$("#searchfield").html("用户&nbsp;&nbsp;&nbsp;"+'<span class="caret"></span>');
	}
}

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