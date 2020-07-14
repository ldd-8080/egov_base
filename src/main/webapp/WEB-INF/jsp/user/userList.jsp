<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!-- Page -->
<div class="page">
	<div class="page-content container-fluid">
	    <!-- Page -->
	    <h1 class="page-title">사용자 목록</h1>
	    <ol class="breadcrumb">
	      <li class="breadcrumb-item"><a href="/main/main.do">Home</a></li>
	      <li class="breadcrumb-item active">사용자 목록</li>
	    </ol>
	
	    <div class="page-content">
	    	<div class="panel">
		        <header class="panel-heading">
		          <div class="panel-actions"></div>
		          <h3 class="panel-title">사용자 목록</h3>
		        </header>
		        <div class="panel-body">
		          <table class="table table-hover dataTable table-striped w-full" id="userTable" data-plugin="dataTable">
		            <thead>
		              <tr>
		                <th>Seq</th>
		                <th>Email</th>
		                <th>Pw</th>
		                <th>Nickname</th>
		                <th>Phone</th>
		              </tr>
		            </thead>
		            <tbody>
		            	<c:forEach var="user" items="${userList}" varStatus="status">
		            	<tr>
		            		<td id="seq_${status.index}">${user.user_seq}</td>
		            		<td>${user.email}</td>
		            		<td>${user.pw}</td>
		            		<td>${user.nickname}</td>
		            		<td>${user.phone_num}</td>
	            		</tr>
		            	</c:forEach>
		            </tbody>
		          </table>
		        </div>
	    	</div>
		</div>
	</div>
<!-- End Page -->
</div>
<script type="text/javascript">
	$("#userTable tr td").click(function(event) {
		if ($(this).get(0).cellIndex === 0) {
		} else {
			var nickname = $(this).parent().children().eq(3).text();
			
			location.href = "${pageContext.request.contextPath}/user/userDetailPage.do?Nickname=" + nickname;
		}
	});

</script>
