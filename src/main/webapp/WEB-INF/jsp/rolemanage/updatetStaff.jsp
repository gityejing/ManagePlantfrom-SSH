<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 加载jstl的c标签库 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 

<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/RoleEdit.css">
</head>
<body>

	<div class="container">
		<section class="main">
		<h4 style="margin: 13px 0 0 63px;">
			<b style="color: #389ac7;">Staff</b> information
		</h4>
		<p id="left_title" style="border-bottom: 2px solid #389AC7;margin-top:0;margin-left:63px; padding-bottom: 2px;width: 140px;">编辑警员信息</p>
		<c:if test="${!empty staff}">
		<div class="basic-grey">
			<form action="${pageContext.request.contextPath }/user/commitUpdate" method="POST" class="STYLE-NAME">
				<input name="Staff_ID" type="hidden" value="${staff.staff_ID }"/>
				<h1>
					修改用户信息 <span>Please fill all the texts in the fields.</span>
				</h1>
				<table style="margin-left: 20%; text-align: right;">
					<tr>
						<td width="110px" text-align="right"><span>用户名 :</span></td>
						<td  style="padding-top: 12px;width: 200px;"><input id="name" type="text" name="Staff_Name"
							placeholder="Your UserName" value="${staff.staff_Name }"/></td>
						<td width="140px"><span>角色 :</span></td>
						<td style="padding-top: 12px;width: 200px;">
							<select name="role_Id" id="type_ID">
								<option >--------请选择角色-------</option>
								<c:forEach items="${roles }" var="item" varStatus="status">
									<option id="${item.role_ID }" value="${item.role_ID }">${item.role_Name }</option>
								</c:forEach>
						</select>
						</td>
					</tr>
					<tr>
						<td><span>密码:</span></td>
						<td style="padding-top: 12px;width: 200px;"><input id="name" type="text" name="PassWord"
							placeholder="Your password" value="${staff.passWord }"/></td>
						
						<td><span>性别 :</span></td>
						<td style="padding-top: 12px;width: 200px;"><input id="name" type="text" name="Sex"
							placeholder="Your Sex" value="${staff.sex}"/></td>
					</tr>
					<tr>
						<td><span>真实姓名:</span></td>
						<td style="padding-top: 12px;width: 200px;"><input id="name" type="text" name="real_Name"
							placeholder="Your Full Name" value="${staff.real_Name}" /></td>
						<td><span>邮箱 :</span></td>
						<td style="padding-top: 12px;width: 200px;"><input id="email" type="text" name="Email"
							placeholder="Valid Email Address" value="${staff.email}" /></td>
						
					</tr>
					<tr>
						<td><span>固定电话 :</span></td>
						<td style="padding-top: 12px;width: 200px;"><input id="email" type="text" name="Phone"
							placeholder="Telephone" value="${staff.phone}"/></td>
						<td><span>移动电话 :</span></td>
						<td style="padding-top: 12px;width: 200px;"><input id="name" type="text" name="Mobile"
							placeholder="Telephone" value="${staff.mobile}"/></td>
					</tr>
					<tr>
						<td><span>是否离职 :</span></td>
						<td style="padding-top: 12px;width: 200px;">
							<select name="Is_Dimission" id="Is_Dimission">
								<option>-------请选择-------</option>
								<option value="是">是</option>
								<option value="否">否</option>
							</select>
						</td>
						
					</tr>
					<tr>
						<td><span>&nbsp;</span></td>
						<td>&nbsp;
						</td>
						<td><span>&nbsp;</span></td>
						<td><input type="submit" value="保存"
					class="button" /></td>
					</tr>
				</table>
			</form>
		</div>
		</c:if>
		
		<script type="text/javascript">
		    var option = document.getElementById("${staff.role_Id}");  
		    option.selected = true;   
		</script>
		
		<script type="text/javascript">
		    var option = document.getElementById("${staff.is_Dimission}");  
		    option.selected = true;   
		</script>
		
		
	</div>

	</section>
</body>
</html>
