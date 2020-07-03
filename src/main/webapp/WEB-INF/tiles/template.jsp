<%@ page pageEncoding="utf-8" session="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<html>
    <head>
        <tiles:insertAttribute name="header" />
    </head>
    <body class="sb-nav-fixed">
    	<tiles:insertAttribute name="nav" />
        <tiles:insertAttribute name="body" />
        <tiles:insertAttribute name="footer" />
    </body>
</html>