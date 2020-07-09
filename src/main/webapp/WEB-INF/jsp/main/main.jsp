<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<script type="text/javascript">
/* $(document).ready(function() {
	$("#userTable").DataTable();
}); */
</script>
    
<!-- Page -->
<div class="page">
	<div class="page-content container-fluid">
	    <!-- Page -->
	    <h1 class="page-title">Jenkins2</h1>
	    <ol class="breadcrumb">
	      <li class="breadcrumb-item"><a href="../index.html">Home</a></li>
	      <li class="breadcrumb-item"><a href="javascript:void(0)">Tables</a></li>
	      <li class="breadcrumb-item active">DataTables</li>
	    </ol>
	
	    <div class="page-content">
	    	<div class="panel">
		        <header class="panel-heading">
		          <div class="panel-actions"></div>
		          <h3 class="panel-title">Basic</h3>
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
		            	<c:forEach var="result" items="${resultList}" varStatus="status">
		            	<tr>
		            		<td id="seq_${status.index}">${result.user_seq}</td>
		            		<td>${result.email}</td>
		            		<td>${result.pw}</td>
		            		<td>${result.nickname}</td>
		            		<td>${result.phone_num}</td>
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
			
			location.href = "${pageContext.request.contextPath}/sub/userDetailPage.do?Nickname=" + nickname;
		}
	});

</script>
