<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<%
		String webRootPath = request.getContextPath();
	%>

	<link rel="stylesheet" href="<%=webRootPath %>/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="<%=webRootPath %>/css/sm.css"/>
	
	<script type="text/javascript" src="<%=webRootPath %>/js/jquery.js"></script>
	<script type="text/javascript" src="<%=webRootPath %>/js/jquery.form.js"></script>
	<script type="text/javascript" src="<%=webRootPath %>/js/common.js"></script>
	
</head>
	
<body>
	<section class="center">
		<div class="title">ASSL Service Market</div>
		<div class="form">
			<form class="form_table">
				<table>
				<tbody>
					<tr><td class="td_title">
						Name of service
					</td><td class="td_content">
						<input type="text" placeholder="Enter the name of service"/>
					</td></tr>
					<tr><td class="td_title">
						Select file
					</td><td class="td_content">
						<input type="file" />
					</td></tr>
					<tr><td class="td_title">
						
					</td><td class="td_content">
						<input type="button" value="Clear" onclick="coreLibs.clearForm();"/>&nbsp;&nbsp;
						<input type="submit" value="Insert"/>
					</td></tr>
				</tbody>
				</table>
			</form>
		</div>
		
	</section>
</body>
</html>
