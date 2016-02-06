<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="un" uri="http://jakarta.apache.org/taglibs/unstandard-1.0" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page import="nsoft.xpubweb.utils.Constant"%>
<un:useConstants var="Constant" className="nsoft.xpubweb.utils.Constant" />

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title><spring:message code="brand.name"/> | <spring:message code="pro.menu_profile"/></title>
	<%@include file="modules/initializer2.jsp" %>

	<link rel="stylesheet" href="<%=webRootPath %>/css/main2/style.css"/>

	<c:set var="storeUserPortrait" value="${user.userPortrait}" scope="request" />
	<c:set var="userId" value="${user.userId}" scope="request" />
	<c:set var="userDescription" value="${user.description}" scope="request" />
	<c:set var="isFriend" value="${user.isFriend}" scope="request" />
	<%
		String storeUserPortrait = request.getAttribute("storeUserPortrait") != null ? (String) request
			.getAttribute("storeUserPortrait") : Constant.EMPTY;
		if (storeUserPortrait.equalsIgnoreCase(""))
			storeUserPortrait = webRootPath + "/images/main/ic_person_large.png";
		//
		String userId = request.getAttribute("userId") != null ? (String) request
			.getAttribute("userId") : Constant.EMPTY;
		boolean isLoggedUser = (userId.equals(loggedUserId));
			
		// get description
		String userDescription = request.getAttribute("userDescription") != null ? (String) request
			.getAttribute("userDescription") : Constant.EMPTY;
		
		// check if user is a friend
		boolean isFriend = (request.getAttribute("isFriend") != null && Integer.parseInt(request.getAttribute("isFriend").toString())>0) ? true:false;
	%>

	<!-- FB open graph tags -->
    <meta property="og:title" content="${user.userName}"/>
    <meta property="og:url" content="<%=hostName %><%=webRootPath %>/store/${user.userId }"/>
    <meta property="og:description" content="${user.description}"/>
    <meta property="og:image" content="<%=storeUserPortrait %>"/>

	<!-- JS Implementing Plugins -->
	<script type="text/javascript" src="<%=webRootPath %>/assets/plugins/jquery.parallax.js"></script>
	<script type="text/javascript" src="<%=webRootPath %>/assets/plugins/image-hover/js/modernizr.js"></script>
	<script type="text/javascript" src="<%=webRootPath %>/assets/plugins/image-hover/js/touch.js"></script>
	<script type="text/javascript" src="<%=webRootPath %>/js/main/masonry/imagesloaded.min.js"></script>
	<script type="text/javascript" src="<%=webRootPath %>/assets/plugins/masonry/jquery.masonry.min.js"></script>

</head>

<body>
	<input type="hidden" value="${user.userId}" id="userId"/>
	<%@include file="modules/book_shop_detail_item.jsp" %>
	
	<!-- top menu -->
	<%@include file="osobit/navbar.jsp"%>

	<section id="my_page">
		<!-- Start My Page -->

		<!-- left menu -->
		<%@include file="osobit/leftnav.jsp"%>

		<div class="col-center">
			<div class="page-container">
            	<div class="row">
					<div class="col-lg-8">
			
						<!-- Start col center -->
						<div class="box_center profile_cover">
							
							<!-- TOP BOX -->
							<div class="top_box_center"><!-- Start top box center -->
					        	<div class="box_img_banner">
					        		<div class="author_cover_border">
					        		<div class="author_cover" style="background:no-repeat url(../images/main2/bg_profile.png); background-size: cover;"></div>
					                </div>
					                <div class="upload_img">
					                    <a href="#"><i class="fa fa-photo"></i> Upload Cover</a>
					                </div>
					            </div>
					            <div class="profile">
					            	<img src="<%=storeUserPortrait %>" class="img-circle"/>
					                <div class="box_profile">
					                	<h2>${user.userName}</h2>
					                	<p>@${user.account}</p>
					                    <div class="follow">
					                    <% if (!isFriend) { %>
					                		<a id="followBtn" class="fl clickable" onclick="coreLibs.followUser('${user.userId}');"><spring:message code="myhome.follow" /></a>                        
					                   	<% } else { %>
					                   		<a id="followBtn" class="unfl clickable" onclick="coreLibs.unfollowUser('${user.userId}');"><spring:message code="myhome.unfollow" /></a>                        
					                   	<% } %>
					                   	    <div class="r_follow">
					                        	<a href="#" class="fix_l"><i class="fa fa-envelope"></i></a>
					                        	<a href="#" class="fix_r">...</a>
					                        </div>
					               		 </div>
					                </div>                
					            </div>            
					        </div><!-- End top box center -->
					        
					        <!-- TAB BOX -->
					        <div class="box_tab_1"><!-- Start box tab -->
					        	<ul class="nav nav-tabs" role="tablist">
					            	<li role="presentation"><a href="<%=webRootPath %>/store/${user.userId}"><spring:message code="book.my_store" /></a></li>
					            	<% if (isLoggedUser) { %>
					            	<li role="presentation"><a href="<%=webRootPath %>/store/${user.userId}"><spring:message code="book.under_work" /></a></li>
					            	<% } %>
					            	<li role="presentation"><a href="<%=webRootPath %>/store/${user.userId}"><spring:message code="book.my_collection" /></a></li>
					            	<li role="presentation"><a href="<%=webRootPath %>/store/${user.userId}"><spring:message code="book.my_group" /></a></li>
					            	<li role="presentation"><a href="<%=webRootPath %>/store/${user.userId}"><spring:message code="book.my_events" /></a></li>
					          	</ul>  
					        </div><!-- End box tab -->
							
							<!-- CONTENTS BOX -->
							<div class="body_mypage"><!-- Start tab content -->
                                <div class="tab-content">


                                    <div role="tabpanel" class="tab-pane fade in active" id="no-tab-my-page">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="box-white">
                                                    <div class="row w-make">
                                                        <div class="col-xs-5"><span class="title-make">Ebook Store</span></div>
                                                        <div class="col-xs-7 text-right"><a class="a-make" href="#">+ Make Ebook Store</a></div>
                                                    </div>
                                                    <img class="img-full" src="<%=webRootPath %>/images/main2/my-store-1.jpg" alt="">
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="box-white">
                                                    <div class="row w-make">
                                                        <div class="col-xs-5"><span class="title-make">Asset Library</span></div>
                                                        <div class="col-xs-7 text-right"><a class="a-make" href="#">+ Make Asset Library</a></div>
                                                    </div>
                                                    <img class="img-full" src="<%=webRootPath %>/images/main2/my-store-2.jpg" alt="">
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="box-white">
                                                    <div class="row w-make">
                                                        <div class="col-xs-5"><span class="title-make">Class</span></div>
                                                        <div class="col-xs-7 text-right"><a class="a-make" href="#">+ Make Class</a></div>
                                                    </div>
                                                    <img class="img-full" src="<%=webRootPath %>/images/main2/my-store-3.jpg" alt="">
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="box-white">
                                                    <div class="row w-make">
                                                        <div class="col-xs-5"><span class="title-make">Event</span></div>
                                                        <div class="col-xs-7 text-right"><a class="a-make" href="#">+ Make Event</a></div>
                                                    </div>
                                                    <img class="img-full" src="<%=webRootPath %>/images/main2/my-store-4.jpg" alt="">
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="peole-and-list">
                                            <h4>People &amp; List</h4>

                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <a href="#" class="btn btn-default">Following</a>
                                                </div>
                                                <div class="col-sm-6">
                                                    <a href="#" class="btn btn-default">Followers</a>
                                                </div>
                                                <div class="col-sm-6">
                                                    <a href="#" class="btn btn-default">Tagged List</a>
                                                </div>
                                                <div class="col-sm-6">
                                                    <a href="#" class="btn btn-default">Invited List</a>
                                                </div>
                                                <div class="col-sm-6">
                                                    <a href="#" class="btn btn-default">Collaborator List</a>
                                                </div>
                                                <div class="col-sm-6">
                                                    <a href="#" class="btn btn-default">AD List</a>
                                                </div>
                                            </div>
                                        </div><!-- /.peole-and-list -->
                                    </div><!-- /#no-tab-my-page -->




                                    <div role="tabpanel" class="tab-pane fade" id="MyStore">
                                        <div class="w-store-title text-center">
                                            <h2 class="store-title">My Store Title <a href="#"><i class="glyphicon glyphicon-pencil"></i></a></h2>
                                        </div>

                                        <div class="store-description box-white text-center">
                                            Description: Lewis Hamilton wins to match Ayrton Senna Lewis Hamilton wins to match Ayrton Senna Lewis Hamilton wins to match Ayrton Senna Lewis Hamilton wins to match Ayrton Senna
                                        </div>

                                        <div class="col-fix">
                                            <div class="grid" style="position: relative; height: 0px;">
                                                <div class="grid-sizer"></div>
                                            </div>
                                        </div>
                                    </div><!-- /#MyStore -->

                                    <div role="tabpanel" class="tab-pane fade" id="MyProject">
                                        My Project
                                    </div><!-- /#MyProject -->




                                    <div role="tabpanel" class="tab-pane fade" id="MyShelf">
                                        My Shelf
                                    </div><!-- /#MyShelf -->




                                    <div role="tabpanel" class="tab-pane fade" id="MyGroup">
                                        My Group
                                    </div><!-- /#MyGroup -->




                                    <div role="tabpanel" class="tab-pane fade" id="MyEvent">
                                        My Event
                                    </div><!-- /#MyEvent -->




                                    <div role="tabpanel" class="tab-pane fade" id="AssetLibrary">
                                        Asset Library
                                    </div><!-- /#AssetLibrary -->




                                </div><!-- End tab content -->
                            </div>
							<!-- End tab content -->
							
						</div>
						<!-- End box center -->
					
					</div>

					<div class="col-lg-4">
						<div class="box-white box-blog">
						    <div class="nano">
						        <div class="nano-content">
						            <div class="comment chatting">
						                <h4>Blog</h4>
						                <div class="item_comment">
						                    <img src="<%=storeUserPortrait %>" class="img-circle">
						                    <div class="text_comment">
						                        <h5>${user.userName}</h5>
						                        <span>@${user.account}</span>
						                        <p>Risus sed scelerisque sed diam penatibus rhoncus mattis! Ac etiam nisi tempor, auctor, dolor sociis, parturient ut et magna integer elementum, etiam eros et, in odio porta, tortor dolor auctor.</p>
						                    </div>
						                </div>
						                <div class="item_comment">
						                    <img src="<%=storeUserPortrait %>" class="img-circle">
						                    <div class="text_comment">
						                        <h5>${user.userName}</h5>
						                        <span>@${user.account}</span>
						                        <p>Risus sed scelerisque sed diam penatibus rhoncus mattis! Ac etiam nisi tempor, auctor, dolor sociis, parturient ut et magna integer elementum, etiam eros et, in odio porta, tortor dolor auctor.</p>
						                    </div>
						                </div>
						                <div class="item_comment_input">
						                	<!--  
						                    <img src="<%=storeUserPortrait %>" class="img-circle">
						                    -->
						                    <div class="input_commnet">
						                        <input type="text" placeholder="Write a comment...">
						                    </div>
						                </div>
						            </div>
						        </div>
						    </div>
						</div>
						
						<div class="box-white">
						    <div class="row w-make">
						        <div class="col-xs-5"><span class="title-make">Ad</span></div>
						        <div class="col-xs-7 text-right"><a class="a-make" href="#">+ Make Ad</a></div>
						    </div>
						    <img class="img-full" src="<%=webRootPath %>/images/main2/my-store-5.jpg" alt="">
						</div>

					</div>					

				</div>
			</div>		
		</div>
		<!-- End col center -->

		<%@include file="osobit/rightnav.jsp"%>

	</section>

</body>
</html>
