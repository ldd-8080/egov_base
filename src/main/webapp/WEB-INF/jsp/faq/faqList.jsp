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
	    <h1 class="page-title">FAQ</h1>
	    <ol class="breadcrumb">
	      <li class="breadcrumb-item"><a href="../index.html">Home</a></li>
	      <li class="breadcrumb-item"><a href="javascript:void(0)">FAQ</a></li>
	      <li class="breadcrumb-item active">FAQ 목록</li>
	    </ol>
	
	    <div class="page-content">
	    	<div class="panel">
		        <header class="panel-heading">
		          <div class="panel-actions"></div>
		          <h3 class="panel-title">FAQ</h3>
		        </header>
		        <div class="panel-body">
		          <table class="table table-hover dataTable table-striped w-full" id="boardTable" data-plugin="dataTable">
		            <thead>
		              <tr>
		                <th>번호</th>
		                <th style="visibility:hidden;position:absolute;"></th>
		                <th>질문</th>
		                <th>답변</th>
		                <th>등록자</th>
		              </tr>
		            </thead>
		            <tbody>
		            	<c:forEach var="result" items="${faqList}" varStatus="status">
		            	<tr>
		            		<td id="seq_${status.index}">${status.index + 1}</td>
		            		<td style="visibility:hidden;position:absolute;">${result.faq_idx}</td>
		            		<td>${result.question}</td>
		            		<td>${result.answer}</td>
		            		<td>${result.create_user}</td>
	            		</tr>
		            	</c:forEach>
		            </tbody>
		          </table>
		        </div>
		        <div class="col-md-6">
                	<div class="example example-buttons">                     
                     	<div>
                     		<button type="button" class="btn btn-squared btn-info" onclick="location.href='/faq/faqWrite.do'">글쓰기</button>
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
			var faq_idx = $(this).parent().children().eq(1).text();
			
			location.href = "${pageContext.request.contextPath}/faq/faqDetail.do?faq_idx=" + faq_idx;
		}
	});

</script>
