<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><spring:message code="title.sample" /></title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/sample.css'/>"/>
    <script type="text/javaScript" language="javascript" defer="defer">
    	
    </script>
</head>

<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">
    <form:form id="scheduleForm" name="scheduleForm" method="post">
    	<div id="content_pop">
	    	<div id="title">
	       		<ul>
	       			<li><img src="<c:url value='/images/egovframework/example/title_dot.gif'/>" alt=""/>&nbsp;<spring:message code="schedule.title" /></li>
	       		</ul>
	       	</div>
	    	<div id="table">
	       		<table width="100%" border="0" cellpadding="0" cellspacing="0" summary="카테고리ID, 케테고리명, 사용여부, Description, 등록자 표시하는 테이블">
	       			<caption style="visibility:hidden">카테고리ID, 케테고리명, 사용여부, Description, 등록자 표시하는 테이블</caption>
	       			<colgroup>
	       				<col width="40"/>
	       				<col width="100"/>
	       				<col width="150"/>
	       				<col width="80"/>
	       				<col width="?"/>
	       				<col width="60"/>
	       			</colgroup>
	       			<tr>
	       				<th align="center">No</th>
	       				<th align="center"><spring:message code="title.sample.id" /></th>
	       				<th align="center"><spring:message code="title.sample.name" /></th>
	       				<th align="center"><spring:message code="title.sample.useYn" /></th>
	       				<th align="center"><spring:message code="title.sample.description" /></th>
	       				<th align="center"><spring:message code="title.sample.regUser" /></th>
	       			</tr>
	       			<c:forEach begin="1" end="10" varStatus="status">
	           			<tr>
	           				<td align="center" class="listtd"></td>
	           				<td align="center" class="listtd"></td>
	           				<td align="left" class="listtd"></td>
	           				<td align="center" class="listtd"></td>
	           				<td align="center" class="listtd"></td>
	           				<td align="center" class="listtd"></td>
	           			</tr>
	       			</c:forEach>
	       		</table>
	       	</div>
       	</div>
    </form:form>
</body>
</html>
