<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!-- Page -->
<div class="page">
	<div class="page-content container-fluid">
	    <!-- Page -->
	    <h1 class="page-title">사용자 상세</h1>
	    <ol class="breadcrumb">
	      <li class="breadcrumb-item"><a href="../index.html">Home</a></li>
	      <li class="breadcrumb-item"><a href="javascript:void(0)">Tables</a></li>
	      <li class="breadcrumb-item active">DataTables</li>
	    </ol>
	
	    <div class="page-content">
	          <form:form method="post" modelAttribute="userVo">
	          <div class="form-group form-material row">
	    			<label class="col-md-3 col-form-label">번호</label>
	    			<div class="col-md-4">
	    				<form:input type="text" class="form-control" path="user_seq" value="${userVo.user_seq}"/>
	    			</div>
	    		</div>
	    		
	    		<div class="form-group form-material row">
	    			<label class="col-md-3 col-form-label">Email</label>
	    			<div class="col-md-4">
	    				<form:input type="text" class="form-control" path="email" value="${userVo.email}"/>
	    			</div>
	    		</div>
	    	
	    		<div class="form-group form-material row">
	    			<label class="col-md-3 col-form-label">Nickname</label>
	    			<div class="col-md-4">
	    				<form:input type="text" class="form-control" path="nickname" value="${userVo.nickname}"/>
	    			</div>
	    		</div>
	    		<div class="form-group form-material row">
	    			<label class="col-md-3 col-form-label">Phone</label>
	    			<div class="col-md-4">
	    				<form:input type="text" class="form-control" path="phone_num" value="${userVo.phone_num}"/>
	    			</div>
	    		</div>    
	    		<div class="col-sm-12 col-md-4 col-xl-2">
	    			<ul class="list-unstyled">
	    				<li class="mb-20">
	    					<input type="submit" value="수정" formaction="/user/update.do">
	    		 		</li>	    	
	    				<li class="mb-20">
	    					<input type="submit" value="삭제" formaction="/sub/loginPage.do">
	    		 		</li>	    		
	    				<li class="mb-20">
	    					<input type="submit" value="목록" formaction="/main/main.do">
	    		 		</li>
	    			</ul>
	    		</div>		
	    	</form:form>
	    	
<form:form action='/sub/boardInsert.do' method="post" enctype="multipart/form-data" modelAttribute="userVo">
    <!-- 생략 -->
    <div class="form-group" id="file-list">
        <a href="#this" onclick="addFile()">파일추가</a>
        <div class="file-group">
            <form:input type="file" path="file"/><a href='#this' name='file-delete'>삭제</a>
        </div>
    </div>
    <button type="submit" class="btn btn-default">작성하기</button>
</form:form>


	    </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        $("a[name='file-delete']").on("click", function(e) {
            e.preventDefault();
            deleteFile($(this));
        });
    })
 
    function addFile() {
        var str = "<div class='file-group'><input type='file' name='file'><a href='#this' name='file-delete'>삭제</a></div>";
        $("#file-list").append(str);
        $("a[name='file-delete']").on("click", function(e) {
            e.preventDefault();
            deleteFile($(this));
        });
    }
 
    function deleteFile(obj) {
        obj.parent().remove();
    }
</script>


