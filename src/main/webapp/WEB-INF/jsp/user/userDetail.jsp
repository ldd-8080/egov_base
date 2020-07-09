<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	    	<form>
	    		<div class="form-group form-material row">
	    			<label class="col-md-3 col-form-label">Email</label>
	    			<div class="col-md-4">
	    				<input type="text" class="form-control" value="${user.email}"/>
	    			</div>
	    		</div>
	    		<div class="form-group form-material row">
	    			<label class="col-md-3 col-form-label">Pw</label>
	    			<div class="col-md-4">
	    				<input type="text" class="form-control" value="${user.pw}"/>
	    			</div>
	    		</div>
	    		<div class="form-group form-material row">
	    			<label class="col-md-3 col-form-label">Nickname</label>
	    			<div class="col-md-4">
	    				<input type="text" class="form-control" value="${user.nickname}"/>
	    			</div>
	    		</div>
	    		<div class="form-group form-material row">
	    			<label class="col-md-3 col-form-label">Phone</label>
	    			<div class="col-md-4">
	    				<input type="text" class="form-control" value="${user.phone_num}"/>
	    			</div>
	    		</div>
	    	</form>
	    </div>
    </div>
</div>