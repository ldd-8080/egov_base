<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Page -->
<div class="page vertical-align text-center" data-animsition-in="fade-in" data-animsition-out="fade-out">>
  <div class="page-content vertical-align-middle">
    <div class="panel">
      <div class="panel-body">
        <div class="brand">
          <img class="brand-img" src="${pageContext.request.contextPath}/images/logo-colored.png" alt="...">
          <h2 class="brand-text font-size-18">Remark</h2>
        </div>
        <form:form method="post" action="/sub/login.do" modelAttribute="subVo">
          <div class="form-group form-material floating" data-plugin="formMaterial">
            <form:input type="text" class="form-control" path="email"/>
            <label class="floating-label">Email</label>
            <form:errors path="email"/>
          </div>
          <div class="form-group form-material floating" data-plugin="formMaterial">
            <form:input type="password" class="form-control" path="pw"/>
            <label class="floating-label">Password</label>
            <form:errors path="pw"/>
          </div>
          <!-- <div class="form-group clearfix">
            <div class="checkbox-custom checkbox-inline checkbox-primary checkbox-lg float-left">
              <input type="checkbox" id="inputCheckbox" name="remember">
              <label for="inputCheckbox">Remember me</label>
            </div>
            <a class="float-right" href="forgot-password.html">Forgot password?</a>
          </div> -->
          <button type="submit" class="btn btn-primary btn-block btn-lg mt-40">Sign in</button>
        </form:form>
        <p>Still no account? Please go to <a href="/sub/signUpPage.do">Sign up</a></p>
      </div>
    </div>

    <footer class="page-copyright page-copyright-inverse">
      <p>WEBSITE BY Creation Studio</p>
      <p>© 2018. All RIGHT RESERVED.</p>
      <div class="social">
        <a class="btn btn-icon btn-pure" href="javascript:void(0)">
        <i class="icon bd-twitter" aria-hidden="true"></i>
      </a>
        <a class="btn btn-icon btn-pure" href="javascript:void(0)">
        <i class="icon bd-facebook" aria-hidden="true"></i>
      </a>
        <a class="btn btn-icon btn-pure" href="javascript:void(0)">
        <i class="icon bd-google-plus" aria-hidden="true"></i>
      </a>
      </div>
    </footer>
  </div>
</div>
<!-- End Page -->