<%@ page pageEncoding="utf-8" session="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html class="no-js js-menubar">
    <head>
        <tiles:insertAttribute name="header" />
    </head>
    <body class="animsition dashboard">
    	<tiles:insertAttribute name="nav" />
    	<tiles:insertAttribute name="left" />
        <tiles:insertAttribute name="body" />
        <tiles:insertAttribute name="footer" />
        
        <!-- Core  -->
		<script src="${pageContext.request.contextPath}/js/babel-external-helpers/babel-external-helpers.js"></script>
		<script src="${pageContext.request.contextPath}/js/jquery/jquery.js"></script>
		<script src="${pageContext.request.contextPath}/js/popper-js/umd/popper.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap/bootstrap.js"></script>
		<script src="${pageContext.request.contextPath}/js/animsition/animsition.js"></script>
		<script src="${pageContext.request.contextPath}/js/mousewheel/jquery.mousewheel.js"></script>
		<script src="${pageContext.request.contextPath}/js/asscrollbar/jquery-asScrollbar.js"></script>
		<script src="${pageContext.request.contextPath}/js/asscrollable/jquery-asScrollable.js"></script>
		<script src="${pageContext.request.contextPath}/js/ashoverscroll/jquery-asHoverScroll.js"></script>
		<script src="${pageContext.request.contextPath}/js/waves/waves.js"></script>
		
		<!-- Plugins -->
		<script src="${pageContext.request.contextPath}/js/switchery/switchery.js"></script>
		<script src="${pageContext.request.contextPath}/js/intro-js/intro.js"></script>
		<script src="${pageContext.request.contextPath}/js/screenfull/screenfull.js"></script>
		<script src="${pageContext.request.contextPath}/js/slidepanel/jquery-slidePanel.js"></script>
		<script src="${pageContext.request.contextPath}/js/chartist/chartist.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/chartist-plugin-tooltip/chartist-plugin-tooltip.js"></script>
		<script src="${pageContext.request.contextPath}/js/jvectormap/jquery-jvectormap.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/jvectormap/maps/jquery-jvectormap-world-mill-en.js"></script>
		<script src="${pageContext.request.contextPath}/js/matchheight/jquery.matchHeight-min.js"></script>
		<script src="${pageContext.request.contextPath}/js/peity/jquery.peity.min.js"></script>
		
		<!-- Scripts -->
		<script src="${pageContext.request.contextPath}/js/Component.js"></script>
		<script src="${pageContext.request.contextPath}/js/Plugin.js"></script>
		<script src="${pageContext.request.contextPath}/js/Base.js"></script>
		<script src="${pageContext.request.contextPath}/js/Config.js"></script>
		
		<script src="${pageContext.request.contextPath}/js/Section/Menubar.js"></script>
		<script src="${pageContext.request.contextPath}/js/Section/GridMenu.js"></script>
		<script src="${pageContext.request.contextPath}/js/Section/Sidebar.js"></script>
		<script src="${pageContext.request.contextPath}/js/Section/PageAside.js"></script>
		<script src="${pageContext.request.contextPath}/js/Plugin/menu.js"></script>
		
		<script src="${pageContext.request.contextPath}/js/config/colors.js"></script>
		<script src="${pageContext.request.contextPath}/js/config/tour.js"></script>
		<script>Config.set('assets', '../assets');</script>
		
		<!-- Page -->
		<script src="${pageContext.request.contextPath}/js/Site.js"></script>
		<script src="${pageContext.request.contextPath}/js/Plugin/asscrollable.js"></script>
		<script src="${pageContext.request.contextPath}/js/Plugin/slidepanel.js"></script>
		<script src="${pageContext.request.contextPath}/js/Plugin/switchery.js"></script>
		<script src="${pageContext.request.contextPath}/js/Plugin/matchheight.js"></script>
		<script src="${pageContext.request.contextPath}/js/Plugin/jvectormap.js"></script>
		<script src="${pageContext.request.contextPath}/js/Plugin/peity.js"></script>
		
		<script src="${pageContext.request.contextPath}/js/dashboard/v1.js"></script>
        
    </body>
</html>