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
    
    	function fn_scheduleList(){
    		var frm = document.scheduleForm;
    		frm.action = "<c:url value='/schedule/scheduleList.do'/>";;
    		frm.submit();
    	}
    	
    	function fn_scheduleDetail(contId){
    		var frm = document.scheduleForm;
    		frm.contId.value = contId;
    		frm.action = "<c:url value='/schedule/scheduleDetail.do'/>";;
    		frm.submit();
    	}
    	
    </script>
</head>

<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">
    <form id="scheduleForm" name="scheduleForm" method="post">
    	<input type="hidden" name="contId" />
    	<div id="content_pop">
	    	<div id="title">
	       		<ul>
	       			<li><img src="<c:url value='/images/egovframework/example/title_dot.gif'/>" alt=""/>&nbsp;<spring:message code="schedule.title" /></li>
	       		</ul>
	       	</div>
	       	<div id="search">
        		<ul>
        			<li>
        			    <label for="searchCondition" style="visibility:hidden;">지역 : </label>
        				<select name="areaSelectList" class="use">
        					<c:forEach var="area" items="${areaList}" varStatus="status">
        						<c:choose>
        							<c:when test="${commandMap.areaSelectList == area.code}">
	        							<option value="${area.code}" label="${area.name} (${area.code})" selected="selected"/> 
        							</c:when>
        							<c:otherwise>
	        							<option value="${area.code}" label="${area.name} (${area.code})" /> 
        							</c:otherwise>
        						</c:choose>
       						</c:forEach>
        				</select>
        			</li>
        			<li>
        	            <span class="btn_blue_l">
        	                <a href="javascript:fn_scheduleList();"><spring:message code="button.search" /></a>
        	                <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
        	            </span>
        	        </li>
                </ul>
        	</div>
	    	<div id="table">
	       		<table width="100%" border="0" cellpadding="0" cellspacing="0">
	       			<colgroup>
	       				<col width="60"/>
	       				<col width="130"/>
	       				<col width="?"/>
	       				<col width="110"/>
	       				<col width="110"/>
	       			</colgroup>
	       			<tr>
	       				<th align="center">지역코드</th>
	       				<th align="center">명칭</th>
	       				<th align="center">주소</th>
	       				<th align="center">전화번호</th>
	       				<th align="center">위치</th>
	       			</tr>
	       			<c:forEach var="result" items="${resultList}" varStatus="status">
	           			<tr>
	           				<td align="center" class="listtd"><c:out value="${result.areacode}"/></td>
	           				<td align="left" class="listtd"><a href="javascript:fn_scheduleDetail('<c:out value="${result.contentid}"/>')" ><c:out value="${result.title}"/></a></td>
	           				<td align="left" class="listtd"><c:out value="${result.addr1} ${result.addr2}"/></td>
	           				<td align="center" class="listtd"><c:out value="${result.tel}"/></td>
	           				<td align="center" class="listtd"><c:out value="${result.mapx}, ${result.mapy}"/></td>
	           			</tr>
	       			</c:forEach>
	       		</table>
	       	</div>
       	</div>
    </form>
</body>
</html>
