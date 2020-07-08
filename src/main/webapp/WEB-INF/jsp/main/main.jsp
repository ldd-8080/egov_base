<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!-- Page -->
<div class="page">
	<div class="page-content container-fluid">
	    <!-- Page -->
	    <h1 class="page-title">DataTables</h1>
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
		          <table class="table table-hover dataTable table-striped w-full" data-plugin="dataTable">
		            <thead>
		              <tr>
		                <th>Name</th>
		                <th>Position</th>
		                <th>Office</th>
		                <th>Age</th>
		                <th>Date</th>
		                <th>Salary</th>
		              </tr>
		            </thead>
		            <tfoot>
		              <tr>
		                <th>Name</th>
		                <th>Position</th>
		                <th>Office</th>
		                <th>Age</th>
		                <th>Date</th>
		                <th>Salary</th>
		              </tr>
		            </tfoot>
		            <tbody>
		            	<c:forEach var="result" items="${resultList}">
		            	<tr>
		            		<td>${result.name}</td>
		            		<td>${result.position}</td>
		            		<td>${result.office}</td>
		            		<td>${result.age}</td>
		            		<td>${result.startDate}</td>
		            		<td>${result.salary}</td>
	            		</tr>
		            	</c:forEach>
		              <tr>
		                <td>Damon</td>
		                <td>5516 Adolfo Green</td>
		                <td>Littelhaven</td>
		                <td>85</td>
		                <td>2014/06/13</td>
		                <td>$553,536</td>
		              </tr>
		              <tr>
		                <td>Torrey</td>
		                <td>1995 Richie Neck</td>
		                <td>West Sedrickstad</td>
		                <td>77</td>
		                <td>2014/09/12</td>
		                <td>$243,577</td>
		              </tr>
		            </tbody>
		          </table>
		        </div>
	    	</div>
		</div>
	</div>
<!-- End Page -->
</div>
