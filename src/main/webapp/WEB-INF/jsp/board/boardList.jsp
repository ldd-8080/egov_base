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
	    <h1 class="page-title">게시판</h1>
	    <ol class="breadcrumb">
	      <li class="breadcrumb-item"><a href="../index.html">Home</a></li>
	      <li class="breadcrumb-item"><a href="javascript:void(0)">Board</a></li>
	      <li class="breadcrumb-item active">BoardList</li>
	    </ol>
	
	    <div class="page-content">
	    	<div class="panel">
		        <header class="panel-heading">
		          <div class="panel-actions"></div>
		          <h3 class="panel-title">Board</h3>
		        </header>
		        <div class="panel-body">
		          <table class="table table-hover dataTable table-striped w-full" id="boardTable" data-plugin="dataTable">
		            <thead>
		              <tr>
		                <th>Seq</th>
		                <th>제목</th>
		                <th>등록자</th>
		                <th>등록일</th>
		              </tr>
		            </thead>
		            <tbody>
		            	<c:forEach var="result" items="${resultList}" varStatus="status">
		            	<tr>
		            		<td id="seq_${status.index}">${result.board_seq}</td>
		            		<td>${result.title}</td>
		            		<td>${result.reg_user}</td>
		            		<td>${result.rdate}</td>
	            		</tr>
		            	</c:forEach>
		            </tbody>
		          </table>
		        </div>
		        <div class="col-md-6">
                	<div class="example example-buttons">                     
                     	<div>
                     		<button type="button" class="btn btn-squared btn-info" onclick="location.href='/board/boardWrite.do'">글쓰기</button>
                     	</div>                     
                	</div>
            	</div>
	    	</div>
	    </div>
	</div>
<!-- End Page -->
</div>
<script type="text/javascript">
	$("#boardTable tr td").click(function(event) {
		if ($(this).get(0).cellIndex === 0) {
		} else {
			var board_seq = $(this).parent().children().eq(0).text();
			
			location.href = "${pageContext.request.contextPath}/board/boardDetail.do?board_seq=" + board_seq;
		}
	});

</script>
