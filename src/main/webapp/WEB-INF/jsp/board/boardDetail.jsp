<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!-- Page -->
<div class="page">
	<div class="page-content container-fluid">
	    <!-- Page -->
	    <h1 class="page-title">게시판 상세</h1>
	    <ol class="breadcrumb">
	      <li class="breadcrumb-item"><a href="../index.html">Home</a></li>
	      <li class="breadcrumb-item"><a href="javascript:void(0)">Board</a></li>
	      <li class="breadcrumb-item active">BoardDetail</li>
	    </ol>
	
	    <div class="page-content">
	          <form:form method="post" modelAttribute="boardVo">
	          <div class="form-group form-material row">
	    			<label class="col-md-3 col-form-label">번호</label>
	    			<div class="col-md-4">
	    				<form:input type="text" class="form-control" path="board_seq" value="${boardVo.board_seq}"/>
	    			</div>
	    		</div>
	    		
	    		<div class="form-group form-material row">
	    			<label class="col-md-3 col-form-label">제목</label>
	    			<div class="col-md-4">
	    				<form:input type="text" class="form-control" path="title" value="${boardVo.title}"/>
	    			</div>
	    		</div>
	    	
	    		<div class="form-group form-material row">
	    			<label class="col-md-3 col-form-label">내용</label>
	    			<div class="col-md-4">
	    				<form:input type="text" class="form-control" path="content" value="${boardVo.content}"/>
	    			</div>
	    		</div>
	    		<div class="form-group form-material row">
	    			<label class="col-md-3 col-form-label">등록자</label>
	    			<div class="col-md-4">
	    				<form:input type="text" class="form-control" path="reg_user" value="${boardVo.reg_user}"/>
	    			</div>
	    		</div>    
	    		<div class="form-group form-material row">
	    			<label class="col-md-3 col-form-label">등록일</label>
	    			<div class="col-md-4">
	    				<form:input type="text" class="form-control" path="rdate" value="${boardVo.rdate}"/>
	    			</div>
	    		</div>    
	    		 <tbody>
		            	<c:forEach var="boardFile" items="${boardFile}" varStatus="status">
		            		
		            		<li>
		            		<input type="hidden" id="IDX" value="${boardFile.IDX}">
		            			<span class="file-img"></span>
		            			<a href="#this" name="file">${boardFile.ORG_FILE_NAME}</a>
		            			<span>${boardFile.FILE_SIZE } kb</span>
		            		</li>
		            	</c:forEach>
		            </tbody>
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
	    </div>
    </div>
</div>

<script type="text/javascript">
   $(document).ready(function(){
	  $("a[name='file']").on("click",function(e){
		  e.preventDefault();
		  fn_downloadFile($(this));
	  });
   });
   
  function fn_downloadFile(obj){
	  var idx = obj.parent().find("#IDX").val();
	var form = {
			"idx":idx
		}
	
	$.ajax({
		  type:'POST',
		  url:'/board/downloadFile.do',
		  data :form,
		  async : false,
		  Type:"POST",
		  success: function(json){
			  alert("aaaaaaaaAA")
		  },
		  error : function(xhr,status,error){
			  alert(error)
			  console.log(error);
		  },
		  });
  }
</script>


