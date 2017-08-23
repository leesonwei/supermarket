/**
 * manager control js
 * date:20170612
 */		 		

/*添加用户模块*/

var userAddModel='<form id="modal-form2" class="form-horizontal" role="form">'
			+'<div class="form-group">'
			+'<label for="userCode" class="col-sm-2 control-label">登录名</label>'
			+'<div class="col-sm-6">'
			+'<input type="text" class="form-control" id="userCode" value="">'
			+'</div>'
			+'<h5 class="col-sm-4 ins"></h5>'
			+'</div>'
			+'<div class="form-group">'
			+'<label for="userName" class="col-sm-2 control-label">用户名</label>'
			+'<div class="col-sm-6">'
			+'<input type="text" class="form-control" id="userName" value="">'
			+'</div>'
			+'<h5 class="col-sm-4 ins"></h5>'
			+'</div>'
			+'<div class="form-group" >'
			+'<label for="radio"  class="col-sm-2 control-label" style="margin-right:15px">性别</label>'
			+'<label class="radio-inline">'
			+'<input class="gender" type="radio" value="1" name="gender"> 男'
			+'</label>'
			+'<label class="radio-inline">'
			+'<input class="gender" type="radio" value="2" name="gender"> 女'
			+'</label>'
			+'</div>'
			+'<div class="form-group">'
			+'<label for="phone" class="col-sm-2 control-label">电话</label>'
			+'<div class="col-sm-6">'
			+'<input type="text" class="form-control" id="phone" value="">'
			+'</div>'
			+'<h5 class="col-sm-4 ins"></h5>'
			+'</div>'
			+'<div class="form-group">'
			+'<label for="birthday" class="col-sm-2 control-label"  style="margin-right:15px">生日</label>'
			+'<div class="input-group date form_date col-sm-5" data-date="" data-date-format="dd MM yyyy" data-link-field="birthday" data-link-format="yyyy-mm-dd">'
			+'<input id="birthdayShow" class="form-control" type="text" value="">'
			+'<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>'
			+'<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>'
			+'</div>'
			+'<h5 class="col-sm-4 ins"></h5>'
			+'<input id="birthday" name="birthday"  type="hidden" value="" /><br/>'
			+'</div>'
			+'<div class="form-group">'
			+'<label for="address" class="col-sm-2 control-label">地址</label>'
			+'<div class="col-sm-6">'
			+'<input type="text" class="form-control" id="address" value="">'
			+'</div>'
			+'<h5 class="col-sm-4 ins"></h5>'
			+'</div>'
			+'<div class="form-group">'
			+'<label for="userRole" class="col-sm-2 control-label">角色</label>'
			+'<div class="col-sm-6">'
			+'<select class="form-control" id="userRole" value=""></select>'
			+'</div>'
			+'<h5 class="col-sm-4 ins"></h5>'
			+'</div>'
			+'<div class="form-group" >'
			+'<label for="idPic" class="col-sm-2 control-label">用户头像</label>'
			+'<div class="col-sm-6">'
			+'<input id="idPic" class="form-control" type="file" name="idPicPath"/>'
			+'</div>'
			+'<h5 class="col-sm-4 ins"></h5>'
			+'</div>'
			+'</form>';

/**用户详情模块*/
var userDetailModel='<form id="modal-form" class="form-horizontal" role="form">'
	+'<div class="form-group no-add">'
	+'<label for="userid" class="col-sm-2 control-label">ID</label>'
	+'<div class="col-sm-10">'
	+'<input type="text" class="form-control" id="userid" value="">'
	+'</div>'
	+'</div>'
	+'<div class="form-group">'
	+'<label for="userCode" class="col-sm-2 control-label">登录名</label>'
	+'<div class="col-sm-10">'
	+'<input type="text" class="form-control" id="userCode" value="">'
	+'</div>'
	+'</div>'
	+'<div class="form-group">'
	+'<label for="userName" class="col-sm-2 control-label">用户名</label>'
	+'<div class="col-sm-10">'
	+'<input type="text" class="form-control" id="userName" value="">'
	+'</div>'
	+'</div>'
	+'<div class="form-group" >'
	+'<label for="radio"  class="col-sm-2 control-label" style="margin-right:15px">性别</label>'
	+'<label class="radio-inline">'
	+'<input class="gender" type="radio" value="1" name="gender"> 男'
	+'</label>'
	+'<label class="radio-inline">'
	+'<input class="gender" type="radio" value="2" name="gender"> 女'
	+'</label>'
	+'</div>'
	+'<div class="form-group">'
	+'<label for="phone" class="col-sm-2 control-label">电话</label>'
	+'<div class="col-sm-10">'
	+'<input type="text" class="form-control" id="phone" value="">'
	+'</div>'
	+'</div>'
	+'<div class="form-group">'
	+'<label for="birthday" class="col-sm-2 control-label"  style="margin-right:15px">生日</label>'
	+'<div class="input-group date form_date col-sm-8" data-date="" data-date-format="dd MM yyyy" data-link-field="birthday" data-link-format="yyyy-mm-dd">'
	+'<input id="birthday" class="form-control" size="16" type="text" value="">'
	+'<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>'
	+'<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>'
	+'</div>'
	+'<input id="birthday" name="birthday"  type="hidden" value="" /><br/>'
	+'</div>'
	+'<div class="form-group">'
	+'<label for="address" class="col-sm-2 control-label">地址</label>'
	+'<div class="col-sm-10">'
	+'<input type="text" class="form-control" id="address" value="">'
	+'</div>'
	+'</div>'
	+'<div class="form-group">'
	+'<label for="userRole" class="col-sm-2 control-label">角色</label>'
	+'<div class="col-sm-10">'
	+'<input type="text" class="form-control" id="userRole" value="">'
	+'</div>'
	+'</div>'
	+'<div class="form-group no-add">'
	+'<label for="createdBy" class="col-sm-2 control-label">创建者</label>'
	+'<div class="col-sm-10">'
	+'<input type="text" class="form-control" id="createdBy">'
	+'</div>'
	+'</div>'
	+'<div class="form-group no-add">'
	+'<label for="creationDate" class="col-sm-2 control-label">创建日期</label>'
	+'<div class="col-sm-10">'
	+'<input type="text" class="form-control" id="creationDate">'
	+'</div>'
	+'</div>'
	+'<div class="form-group no-add">'
	+'<label for="modifyBy" class="col-sm-2 control-label">更新者</label>'
	+'<div class="col-sm-10">'
	+'<input type="text" class="form-control" id="modifyBy">'
	+'</div>'
	+'</div>'
	+'<div class="form-group no-add">'
	+'<label for="modifyDate" class="col-sm-2 control-label">更新日期</label>'
	+'<div class="col-sm-10">'
	+'<input type="text" class="form-control" id="modifyDate">'
	+'</div>'
	+'</div>'
	+'<div class="form-group" >'
	+'<label for="idPic" class="col-sm-2 control-label">用户头像</label>'
	+'<div class="col-sm-10">'
	+'<input id="idPic" class="form-control" type="file" name="idPicPath"/>'
	+'</div>'
	+'</div>'
	+'</form>';
