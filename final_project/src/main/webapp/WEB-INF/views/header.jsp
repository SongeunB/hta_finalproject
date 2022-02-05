<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Final 3조</title>

    <!-- Custom fonts for this template-->
    <link href="${cp}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${cp}/resources/css/sb-admin-2.min.css" rel="stylesheet">

<style type="text/css">
#jhta_logo{
	width: 50px;
}
</style>
</head>


<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="${cp}/home">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Final <sup>3</sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="${cp}/home">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>홈</span></a>
            </li>
            <sec:authorize access="isAnonymous()">
            <li class="nav-item active">
                <a class="nav-link" href="${cp}/login">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>로그인</span></a>
            </li>
            <li>
            <li class="nav-item active">
                <a class="nav-link" href="${cp}/join">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>회원가입</span></a>
            </li>
			</sec:authorize>
			<sec:authorize access="isAuthenticated()">
			<%-- 
			<li class="nav-item active">
			
			 &nbsp;&nbsp;&nbsp;<sec:authentication property="principal.username"/>님 반갑습니다 </li>
		 --%>
			<li class="nav-item active">
			 <a class="nav-link" href="${cp }/logout">
			
			   <i class="fas fa-fw fa-tachometer-alt"></i>
				<span>로그아웃</span></a>
		
		<li class="nav-item active">
			 <a class="nav-link" href="${cp }/member/mymember">
			
			   <i class="fas fa-fw fa-tachometer-alt"></i>
				<span>내정보</span></a>
		
		
	</sec:authorize>
		

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading"> 
            	<!-- 소제목 -->
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>커뮤니티</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        
                        <a class="collapse-item" href="buttons.html">커뮤니티</a>
                        <a class="collapse-item" href="cards.html">MY 커뮤니티</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>동아리</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <!-- <h6 class="collapse-header">Custom Utilities:</h6> -->
                        <a class="collapse-item" href="${cp}/circle/CircleList">전체 동아리</a>
                        <a class="collapse-item" href="${cp}/circle/CircleRank">동아리 랭킹</a>
                        <a class="collapse-item" href="${cp}/circle/MyCircle">MY 동아리</a>
                    </div>
                </div>
            </li>
            
            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities2"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>거래장터</span>
                </a>
                <div id="collapseUtilities2" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                    	<a class="collapse-item" href="${cp}/deal/deallist">장터</a>
                        <a class="collapse-item" href="${cp}/deal/dealinsert">상품등록</a>
                        <a class="collapse-item" href="${cp}/deal/deallist">장터관리</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                <!-- 소제목 -->
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>취업정보</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="${cp }/job/jobList">채용 공고</a>
                        <a class="collapse-item" href="${cp }/job/cal">채용 달력</a>
                        <a class="collapse-item" href="${cp }/job/myScrap">스크랩</a>
                    </div>
                </div>
            </li>
            
            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages2"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>시간표</span>
                </a>
                <div id="collapsePages2" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <!-- <h6 class="collapse-header">Login Screens:</h6> -->
                        <a class="collapse-item" href="${cp }/timetable/table">내시간표</a>
                        <a class="collapse-item" href="${cp }/timetable/subject">강의평가</a>
                        <a class="collapse-item" href="${cp }/timetable/score">학점계산기</a>
                        <!-- <div class="collapse-divider"></div>
                        <h6 class="collapse-header">Other Pages:</h6>
                        <a class="collapse-item" href="404.html">404 Page</a>
                        <a class="collapse-item" href="blank.html">Blank Page</a> -->
                    </div>
                </div>
            </li>
            <sec:authorize access="hasRole('ROLE_ADMIN')">
            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages3"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>관리자게시판</span>
                </a>
                <div id="collapsePages3" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="${cp }/admin/memberList">회원관리</a>
                        <a class="collapse-item" href="${cp }/admin/commConfirm">커뮤니티 승인요청 페이지</a>
                        <a class="collapse-item" href="${cp }/admin/circleConfirm">동아리 승인요청 페이지</a>
                        <a class="collapse-item" href="${cp }/admin/jobConfirm">채용공고 승인요청 페이지</a>
						<!-- <div class="collapse-divider"></div>  -->                       
                        <!-- <h6 class="collapse-header">Other Pages:</h6>-->   
                    </div>
                </div>
            </li>
            </sec:authorize>
            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages4"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>게시요청</span>
                </a>
                <div id="collapsePages4" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <!-- <h6 class="collapse-header">Login Screens:</h6>  -->
                        <a class="collapse-item" href="${cp}/circle/CircleInsert">동아리 게시요청</a>
                        <a class="collapse-item" href="${cp }/job/insert">채용공고 게시요청</a>
                        <!-- <div class="collapse-divider"></div>  -->
                    </div>
                </div>
            </li>

            <!-- Nav Item - Charts -->
            <!-- <li class="nav-item">
                <a class="nav-link" href="charts.html">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>임시</span></a>
            </li> -->

            <!-- Nav Item - Tables -->
             <!-- <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/deal/dealinsert">
                    <i class="fas fa-fw fa-table"></i>
                    <span>임시</span></a>
            </li> -->

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

            <!-- Sidebar Message -->
            <div class="sidebar-card d-none d-lg-flex">
                <img class="sidebar-card-illustration mb-2" id="jhta_logo" src="${cp}/resources/img/jhta_logo.png" alt="학원로고">
                <p class="text-center mb-2"><strong>중앙HTA</strong> 홈페이지</p>
                <a class="btn btn-success btn-sm" href="http://www.jhta.co.kr/main">이동하기!</a>
            </div>

        </ul>
        <!-- End of Sidebar -->
        
        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">