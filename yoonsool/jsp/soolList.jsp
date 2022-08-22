<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>우리술 윤술</title>
<link rel="icon" type="image/x-icon" href="./images/icon/yoonsolremove.png">
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css"  />
<link rel="stylesheet" type="text/css" href="./css/head.css" />
<link rel="stylesheet" type="text/css" href="./css/soolList.css" />
<link rel="stylesheet" type="text/css" href="./css/footer.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script>
	window.onload = function(){
	    $("#page_footer").load("./footer.do");
	    $("#header").load("./head.do");
	}   
</script>

</head>
<body>
    <div id="header">
        <!-- header -->
    </div>    
	<div id="wrap">
        <div class="intro_bg">
            <div class="intro_text">
                <h1>우리 술 소개</h1>
                <br>
                <h4>우리 술을 소개합니다</h4>
            </div>
        </div>
        <div class="container">
        <table class="table table-bordered">
        	<tbody>
        		<tr>
        			<td>
        				<ul>
        					<li class="prod-image"><img alt="" src="./images/sool/dadapo.png">
        					<li class="prod-title">대대포블루
        					<li class="prod-info"> 제조사 : 담양죽향도가 <br>
						                           주종 : 탁주 <br>
						                           규격 : 600ml <br>
						                           도수 : 6% <br>
						                           특징 : 벌꿀과 쌀로 빚은 생막걸리, 탄산이 거의 없으며 벌꿀의 달달한 맛이 특징<br>
						    <li class="prod-link"><button class="btn btn-outline-primary" onclick="window.open('https://jhdg.co.kr/')"> 제품홈페이지 </button>    					
        				</ul>
        			</td>
        			<td>
        				<ul>
        					<li class="prod-image"><img src="./images/sool/goyou.jpg" alt="">
        					<li class="prod-title">고흥유자주
        					<li class="prod-info"> 제조사 : 녹동양조장 <br>
						                           주종 : 약주 <br>
						                           규격 : 500ml <br>
						                           도수 : 8% <br>
						                           특징 : 유자 특유의 상큼함과 달달함이 강하게 느껴지는 시트러스 계열의 약주
						    <li class="prod-link"><button class="btn btn-outline-primary" onclick="window.open('https://inflow.pay.naver.com/rd?tr=ds&retUrl=http%3A%2F%2Feotteonharu.com%2F&pType=M&no=&vcode=5nr37hTMbR0M2dOdVUu0tdSOc2bP19pEH40fJfN5Oj8pSm8mBSMv%2BfhqPyTgzcdTlLKJrKPrB7Df5oLJUfWSkQ%3D%3D')"> 제품홈페이지 </button>    					
        				</ul>
        			</td>
       				<td>
	       				<ul>
	       					<li class="prod-image"><img src="./images/sool/gompyo.png" alt="">
	       					<li class="prod-title">표문막걸리
	       					<li class="prod-info"> 제조사 : 한강주조 <br>
						                           주종 : 탁주 <br>
						                           규격 : 500ml <br>
						                           도수 : 6% <br>
						                           특징 : 곰표와의 콜라보 상품으로 표문을 뒤집으면 곰표! 무감미료의 깔끔한 막걸리 
						    <li class="prod-link"><button class="btn btn-outline-primary" onclick="window.open('https://hangangbrewery.com/')"> 제품홈페이지 </button>    					
	       				</ul>
        			</td>      		
        		</tr>
        		<tr>
        			<td>
	       				<ul>
	       					<li class="prod-image"><img src="./images/sool/sarack.jpg" alt="">
	       					<li class="prod-title">사락
	       					<li class="prod-info"> 제조사 : 맥키스컴퍼니 <br>
						                           주종 : 증류주 <br>
						                           규격 : 375ml <br>
						                           도수 : 33% <br>
						                           특징 : 보리를 증류해서 만든 위스키로 부드러운 향기가 특징 
						    <li class="prod-link"><button class="btn btn-outline-primary" onclick="window.open('https://www.mackisscompany.co.kr/sub0305')"> 제품홈페이지 </button>    					
	       				</ul>
        			</td>      	
        			<td>
	       				<ul>
	       					<li class="prod-image"><img src="./images/sool/seoulnight.png" alt="">
	       					<li class="prod-title">서울의 밤
	       					<li class="prod-info"> 제조사 : 더한주류 <br>
						                           주종 : 증류주 <br>
						                           규격 : 375ml <br>
						                           도수 : 25% <br>
						                           특징 : 황매실로 만든 증류주로 은은한 매실향이 특징, 온더락으로도 마시기 좋음
						    <li class="prod-link"><button class="btn btn-outline-primary" onclick="window.open('https://www.thehan.kr/')"> 제품홈페이지 </button>    					
	       				</ul>
        			</td>      	
        			<td>
	       				<ul>
	       					<li class="prod-image"><img src="./images/sool/sulsam.jpg" alt="">
	       					<li class="prod-title">술샘16
	       					<li class="prod-info"> 제조사 : 술샘 <br>
						                            주종 : 리큐르 <br>
						                            규격 : 375ml <br>
						                            도수 : 16% <br>
						                            특징 : 오미자를 넣어 만든 리큐르로 오미자의 복잡한 맛이 잘 담긴 리큐르
						    <li class="prod-link"><button class="btn btn-outline-primary" onclick="window.open('https://www.sulseam.co.kr/')"> 제품홈페이지 </button>    					
	       				</ul>
        			</td>
        		</tr>
        	</tbody>
        </table>
        </div>

    <footer id="page_footer">
        <!-- footer는 위에서 연결~ -->
    </footer>
</div>
</body>
</html>