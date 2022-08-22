<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>우리술 윤술</title>
<link rel="icon" type="image/x-icon"
	href="./images/icon/yoonsolremove.png">
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="./css/head.css" />
<link rel="stylesheet" type="text/css" href="./css/home.css" />
<link rel="stylesheet" type="text/css" href="./css/footer.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script>
	window.onload = function() {
		$("#page_footer").load("./footer.do");
		$("#header").load("./head.do");
	}

	/* SHOW / HIDE GO TO TOP s */
	$(window).scroll(function() {
		if ($(this).scrollTop() > 200) {
			$('#scrollToTop').fadeIn();
		} else {
			$('#scrollToTop').fadeOut();
		}
	});
	$('#scrollToTop').click(function() {
		$('html, body').animate({
			scrollTop : 0
		}, 800);
		return false;
	});
	/* SHOW / HIDE GO TO TOP e */
</script>

</head>
<body>



	<div id="header">
		<!-- header -->
	</div>
	<div id="wrap">
		<div class="main_text0">
			<div class="intro_bg">
					<h1>윤술은</h1>
					<p class="lead">
						햇빛이나 달빛에 비치어 반짝이는 잔물결이란 <br> 순우리말 윤슬에 술을 더해 만든 이름으로 <br>
						반짝이는 잔물결같이 아름다운 우리 술을 <br> 많은 사람들에게 알리기 위한 공간입니다.
					</p>
			</div>
			<ul class="icons">
				<li>
					<div class="sool_img">
						<img src="./images/loginmain/202204_sool_02.png" alt="이미지가 없습니다.">
					</div>
					<div class="contents2">
						<p>
							각 달에 어울리는 <br> 우리 술을 소개합니다<br>
						</p>
					</div>
				</li>
				<li>
					<div class="sool_img">
						<img src="./images/sool/gompyo.png" alt="이미지가 없습니다.">
					</div>
					<div class="contents2">
						<p>
							우리 술에 대한 <br> 정보를 나눕니다<br>
						</p>
					</div>
				</li>
				<li>
					<div class="sool_img">
						<img src="./images/loginmain/KakaoTalk_20220521_185414425.jpg"
							alt="이미지가 없습니다.">
					</div>
					<div class="contents2">
						<p>
							우리 술이 준비된<br> 공간을 소개합니다
						</p>
					</div>
				</li>
			</ul>
		</div>

		<div class="main_text1">
			<h1 id="sool">이달의 술</h1>
			<h4>이달의 추천주를 소개합니다</h4>
			<div class="sool">
				<div>
					<img src="./images/loginmain/202204_sool_01.png"
						alt="이미지가 존재하지 않습니다.">
				</div>
				<div class="contents3">
					<h2>쑥크레</h2>
					<p>
						<span></span><br> 주종 : 탁주 <br> 양조장: 대전(주방장양조장)<br>
						<br> 쑥크레는 달콤하다는 뜻의 프랑스어 ‘Sucré’와 우리말 ‘쑥’의 합성어로 달콤한 쑥이라는 의미를
						가진 우리 술입니다. 향기로운 쑥 향과 단맛의 밸런스가 좋은 탁주입니다. 쑥 특유의 향긋함이 코끝에 퍼지며 부드럽고
						달콤한 맛을 느낄 수 있습니다.

					</p>
				</div>
			</div>
		</div>
		<div class="main_text2">
			<ul>
				<li>
					<div class="sool_list">
						<h1>우리 술 소개</h1>
						<div>
							<p>
								다양한 종류의<br> 우리 술을 소개합니다
							</p>
						</div>
						<div class="more">
							<a id="sool" href='./soolList.do'>바로가기</a>
						</div>
					</div>
				</li>
				<li>
					<div class="bar_list">
						<h1>우리 술 판매처</h1>
						<div>
							<p>
								우리 술을 접할 수 있는<br> 매장을 소개합니다
							</p>
						</div>
						<div class="more">
							<a id="bar" href='./barList.do'>바로가기</a>
						</div>
					</div>
				</li>
			</ul>
		</div>
		<footer id="page_footer"> </footer>
		<!-- Scroll to top -->
		<a href="#" id="scrollToTop">Go to Top</a>
	</div>
</body>
</html>