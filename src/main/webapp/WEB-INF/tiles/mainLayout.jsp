
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:insertAttribute name="title" ignore="true" /></title>
</head>
<body>
<div>
<tiles:insertAttribute name="header" />
</div>
<div >
<tiles:insertAttribute name="menu" />
</div>
<div style="float: left; padding: 10px; width: 15%;">
<tiles:insertAttribute name="leftNav" />
</div>

<div	style="float: left; padding: 10px; width: 80%; border-left: 1px solid pink;">
<tiles:insertAttribute name="content" />
</div>

<div style="clear: both">
<tiles:insertAttribute name="footer" />
</div>

</body>
</html>
