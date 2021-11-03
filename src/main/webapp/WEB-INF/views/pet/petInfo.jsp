<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../incloud/header.jsp"%>
<!-- 펫 상품 추천 css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/petlist.css">

<body>
	<!-- 헤더 네비게이션 -->
	<div style="margin-top: 165px;">
		<div class="container1026">
			<div class="wrap">
				<div class="box">
					<p>
						<a href="#">홈</a> > <a href="#">강아지용</a> > <a href="#">사료</a> > <a>상품이름</a>
					</p>
				</div>
			</div>
		</div>
		<!-- 헤더 프로필 -->
		<div class="maincon">
			<div class="myinfo">
				<div class="cb1">
					<!-- 헤더 마이페이지 -->
					<div class="cb2">
						<a href="#" class="myinfo2" onclick="location.href='petUpdate'">
							<div class="cb3">
								<div class="myinfo3">
									<div class="myimg-box">
										<img class="myimg" src="/resources/img/noimg.png"
											alt="마이페이지사진" sizes="auto"> <span class="myimp-sp">편집</span>
									</div>
								</div>
							</div>
							<div class="cb3-1">
								<div class="cb4">
									<span class="myinfo-name"><strong>박천일님</strong> <i
										class="fas fa-cog"></i> </span>
									<div class="cb5">
										<div class="cb6">
											<img class="naver" src="/resources/img/naver.jpg" alt="네이버사진">
										</div>
										<div class="cb6-1">
											<span>asdfasdf@naver.com</span>
										</div>
									</div>
								</div>
							</div>
						</a>
					</div>
					<!-- 헤더 펫 프로필 -->
					<div class="cb2-1">
						<div class="cb3-3">
							<ul class="pet-list-grup">
								<c:forEach items="${list }" var="vo">
									<li class="pet-addlist">
										<div class="pet-addbtn">
											<h4>
												<div class="petname">${vo.pname }</div>
												<span class="toppetBox"> <span class="toppet">대표</span>
												</span>
											</h4>
											<div class="petinfo">
												<span class="petbirth">${vo.pyear }년</span> 
												<span class="petbirth">${vo.pmonth }월</span> 
												<span class="petweight">${vo.pweight }kg</span>
											</div>
										</div>
									</li>
								</c:forEach>
								<li class="pet-addlist-in">
									<button class="pet-addbtn-in"
										onclick="location.href='petRegister'">
										<div>
											<i class="fas fa-plus-square addIcon"></i> 강아지 등록하기
										</div>
									</button>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- 상세정보 사이드메뉴 -->
				<div class="cb1-1">
					<div class="cb2-2">
						<div class="side">
							<h3>나의 가족</h3>
						</div>
						<div class="side-1">
							<a href="#" onclick="location.href='../pet/petList'"> 
							<span>상품추천</span>
							<i class="fas fa-angle-right i1"></i>
							</a>
						</div>
						<div class="side-1">
							<a href="#" onclick="location.href='petRegister'"> 
							<span>펫	등록하기</span> 
							<i class="fas fa-angle-right i2"></i>
							</a>
						</div>
						<div class="side-1">
							<a href="#" onclick="location.href='petInfo'">
							<span>펫 수정/삭제 하기</span> 
							<i class="fas fa-angle-right i2"></i>
							</a>
						</div>
						<div class="side-1">
							<a href="#" onclick="location.href=''"> 
							<span>고객센터</span> 
							<i class="fas fa-angle-right i1"></i>
							</a>
						</div>
					</div>
				</div>
				<!-- 펫 정보 -->
				<div class="petcontent">
					<main class="listMain">
						<div>
							<div>
								<h2>나의 가족</h2>
							</div>
							<c:forEach items="${list }" var="list">
								<div class="recom-product">
									<div class="recomList petdetail">
										<a href="#" onclick="location.href='petUpdate?pnum=${list.pnum}'">
											<div class="pet-addbtn">
												<h4>
													<div class="petname">${list.pname }</div>
													<span class="toppetBox"> <span class="toppet">대표</span>
													</span>
												</h4>
												<div class="petinfo">
													<span class="petbirth">${list.pyear }년</span> 
													<span class="petbirth">${list.pmonth }월</span> 
													<span class="petweight">${list.pweight }kg</span>
												</div>
											</div>
										</a>
									</div>
								</div>
							</c:forEach>
						</div>
					</main>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../incloud/footer.jsp"%>

<c:if test="${!empty msg }">
	<script type="text/javascript">
	$(function() {
		var isMsg = true;
		
		if(isMsg) {
			alert("${msg}")
			isMsg = false;
		}
	});
	</script>
</c:if>	

<script type="text/javascript">
	<!-- 펫 프로필 출력 갯수 제한 -->
	$(function() {
		$(".pet-addlist:gt(1)").css({"display" : "none"});
	});
</script>

	
	