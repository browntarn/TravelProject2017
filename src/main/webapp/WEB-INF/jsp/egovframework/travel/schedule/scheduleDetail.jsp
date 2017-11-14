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
			var frm = document.scheduleListForm;
			frm.action = "<c:url value='/schedule/scheduleList.do'/>";
			frm.submit();
		}
	    
    </script>
</head>

<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">
<form id="scheduleListForm" name="scheduleListForm" method="post">
   	<input type="hidden" name="areaSelectList" value="${commandMap.areaSelectList}"/>
</form>
    <form id="scheduleForm" name="scheduleForm" method="post">
    	<div id="content_pop">
	    	<div id="title">
	       		<ul>
	       			<li><img src="<c:url value='/images/egovframework/example/title_dot.gif'/>" alt=""/>&nbsp;<spring:message code="schedule.detail" /></li>
	       		</ul>
	       	</div>
			<div id="table">
		    	<table width="100%" border="1" cellpadding="0" cellspacing="0" style="bordercolor:#D3E2EC; bordercolordark:#FFFFFF; BORDER-TOP:#C2D0DB 2px solid; BORDER-LEFT:#ffffff 1px solid; BORDER-RIGHT:#ffffff 1px solid; BORDER-BOTTOM:#C2D0DB 1px solid; border-collapse: collapse;">
		    		<colgroup>
		    			<col width="150"/>
		    			<col width="?"/>
		    		</colgroup>
	        		<tr>
	        			<td class="tbtd_caption">test1</td>
	        			<td class="tbtd_content">
	        				<input name="agelimit" class="txt" value="${detailResult.agelimit}" />
	        			</td>
	        		</tr>
		    		<tr>
		    			<td class="tbtd_caption">test2</td>
		    			<td class="tbtd_content">
		    				<input name="eventplace" class="txt" value="${detailResult.eventplace}" />
		    			</td>
		    		</tr>
		    		<tr>
	        			<td class="tbtd_caption">test3</td>
	        			<td class="tbtd_content">
	        				<input name="eventstartdate" class="txt" value="${detailResult.eventstartdate}" />
	        			</td>
	        		</tr>
		    		<tr>
		    			<td class="tbtd_caption"><label for="useYn"><spring:message code="title.sample.useYn" /></label></td>
		    			<td class="tbtd_content">
		    				<select name="useYn" class="use">
		    					<option value="Y" label="Yes" />
		    					<option value="N" label="No" />
		    				</select>
		    			</td>
		    		</tr>
		    	</table>
			</div>
			<div id="sysbtn">
    		<ul>
    			<li>
                    <span class="btn_blue_l">
                        <a href="javascript:fn_scheduleList();"><spring:message code="button.list" /></a>
                        <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
                    </span>
                </li>
            </ul>
    	</div>
       	</div>
    </form>
</body>
</html>
