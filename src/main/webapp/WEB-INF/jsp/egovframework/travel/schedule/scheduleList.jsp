<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<script type="text/javaScript" defer="defer">
    	function fn_scheduleList(){
    		var frm = document.scheduleForm;
    		frm.action = "<c:url value='/schedule/scheduleList.do'/>";;
    		frm.submit();
    	}
    	
    	function fn_scheduleDetail(contId,mapx,mapy){
    		var frm = document.scheduleForm;
    		frm.contId.value = contId;
    		frm.mapx.value = mapx;
    		frm.mapy.value = mapy;
    		frm.action = "<c:url value='/schedule/scheduleDetail.do'/>";;
    		frm.submit();
    	}	
</script>

<form id="scheduleForm" name="scheduleForm" method="post">
  	<input type="hidden" name="contId" />
  	<input type="hidden" name="mapx" />
  	<input type="hidden" name="mapy" />
  	<br><br><br>
  	<!--product section-->
    <section id="product" class="product">
        <div class="container">
            <div class="main_product roomy-80">
                <div class="head_title text-center fix">
                    <h2 class="text-uppercase">전국 축제 & 행사 정보</h2>
                    <h5>Clean and Modern design is our best specialist</h5>
                </div>

			
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <div class="port_item xs-m-top-30">
                                            <div class="port_img">
                                                <img src="assets/images/work-img1.jpg" alt="" />
                                                <div class="port_overlay text-center">
                                                    <a href="assets/images/work-img1.jpg" class="popup-img">+</a>
                                                </div>
                                            </div>
                                            <div class="port_caption m-top-20">
                                                <h5>Your Work Title</h5>
                                                <h6>- Graphic Design</h6>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="port_item xs-m-top-30">
                                            <div class="port_img">
                                                <img src="assets/images/work-img2.jpg" alt="" />
                                                <div class="port_overlay text-center">
                                                    <a href="assets/images/work-img2.jpg" class="popup-img">+</a>
                                                </div>
                                            </div>
                                            <div class="port_caption m-top-20">
                                                <h5>Your Work Title</h5>
                                                <h6>- Graphic Design</h6>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="port_item xs-m-top-30">
                                            <div class="port_img">
                                                <img src="assets/images/work-img3.jpg" alt="" />
                                                <div class="port_overlay text-center">
                                                    <a href="assets/images/work-img3.jpg" class="popup-img">+</a>
                                                </div>
                                            </div>
                                            <div class="port_caption m-top-20">
                                                <h5>Your Work Title</h5>
                                                <h6>- Graphic Design</h6>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="port_item xs-m-top-30">
                                            <div class="port_img">
                                                <img src="assets/images/work-img4.jpg" alt="" />
                                                <div class="port_overlay text-center">
                                                    <a href="assets/images/work-img4.jpg" class="popup-img">+</a>
                                                </div>
                                            </div>
                                            <div class="port_caption m-top-20">
                                                <h5>Your Work Title</h5>
                                                <h6>- Graphic Design</h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
					</div>
                        

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <i class="fa fa-angle-left" aria-hidden="true"></i>
                        <span class="sr-only">Previous</span>
                    </a>

                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <i class="fa fa-angle-right" aria-hidden="true"></i>
                        <span class="sr-only">Next</span>
                    </a>
                </div>

            </div><!-- End off row -->
        </div><!-- End off container -->
    </section><!-- End off Product section -->
            
            
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
          				<td align="left" class="listtd"><a href="javascript:fn_scheduleDetail('<c:out value="${result.contentid}"/>',${result.mapx},${result.mapy})" ><c:out value="${result.title}"/></a></td>
          				<td align="left" class="listtd"><c:out value="${result.addr1} ${result.addr2}"/></td>
          				<td align="center" class="listtd"><c:out value="${result.tel}"/></td>
          				<td align="center" class="listtd"><c:out value="${result.mapx}, ${result.mapy}"/></td>
          			</tr>
      			</c:forEach>
      		</table>
      	</div>
    </div>
</form>
    
<%@ include file="/WEB-INF/include/include-footer.jspf" %>                  
            
			



           
