<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>우리술 윤술</title>
<link rel="icon" type="image/x-icon"   href="./images/icon/yoonsolremove.png">
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="./css/head.css" />
<link rel="stylesheet" type="text/css" href="./css/style_barList.css" />
<link rel="stylesheet" type="text/css" href="./css/footer.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script>
	window.onload = function() {
		$("#page_footer").load("./footer.do");
		$("#header").load("./head.do");
	}
</script>

</head>
<body>
	<div id="header">
		<!-- header -->
	</div>
	<div class="intro_bg">
		<div class="intro_text">
			<h1>우리 술 판매처</h1>
			<br>
			<h4>우리 술을 접할 수 있는 매장</h4>
		</div>
	</div>
	<!-- 게시판 -->
	<div class="list">
            <div class="barList">
                <div class="bar_s"> </div>
                <!-- List 1 -->
                <div class="bar_content"> 
                    <h2>작교</h2>
                    <div class="barexpl"> 
                        주소 : 대전 유성구 농대로2번길 7-11 <br>
                        영업시간 : 17:00 ~ 02:00 <br>
                        한식 술집, 전통주 소믈리에가 전통주를 추천해주는 곳
                    </div>
                    <span id="test" style="CURSOR: hand" 
                        onclick= "if(plain.style.display == 'none') {
                                    plain.style.display='';
                                    } else {plain.style.display = 'none';}"> 
                        <img class="down" src="./images/icon/downward-arrow.png" alt="">
                    </span>
                </div>
                 <!-- 지도 넣을 부분  -->
                <div id="plain" style="display: none">
                       <div style="font:normal normal 400 12px/normal dotum, sans-serif; width:1000px; height:332px; color:#333; position:relative"><div style="height: 300px;"><a href="https://map.kakao.com/?urlX=579378.0&amp;urlY=795525.0&amp;itemId=201522118&amp;q=%EC%9E%91%EA%B5%90&amp;srcid=201522118&amp;map_type=TYPE_MAP&amp;from=roughmap" target="_blank"><img class="map" src="http://t1.daumcdn.net/roughmap/imgmap/0acb23dd48cacba56bb073449673ca287ef5a1be27838d4cd979cf52d5ff53cc" width="998px" height="298px" style="border:1px solid #ccc;"></a></div><div style="overflow: hidden; padding: 7px 11px; border: 1px solid rgba(0, 0, 0, 0.1); border-radius: 0px 0px 2px 2px; background-color: rgb(249, 249, 249);"><a href="https://map.kakao.com" target="_blank" style="float: left;"><img src="//t1.daumcdn.net/localimg/localimages/07/2018/pc/common/logo_kakaomap.png" width="72" height="16" alt="카카오맵" style="display:block;width:72px;height:16px"></a><div style="float: right; position: relative; top: 1px; font-size: 11px;"><a target="_blank" href="https://map.kakao.com/?from=roughmap&amp;srcid=201522118&amp;confirmid=201522118&amp;q=%EC%9E%91%EA%B5%90&amp;rv=on" style="float:left;height:15px;padding-top:1px;line-height:15px;color:#000;text-decoration: none;">로드뷰</a><span style="width: 1px;padding: 0;margin: 0 8px 0 9px;height: 11px;vertical-align: top;position: relative;top: 2px;border-left: 1px solid #d0d0d0;float: left;"></span><a target="_blank" href="https://map.kakao.com/?from=roughmap&amp;eName=%EC%9E%91%EA%B5%90&amp;eX=579378.0&amp;eY=795525.0" style="float:left;height:15px;padding-top:1px;line-height:15px;color:#000;text-decoration: none;">길찾기</a><span style="width: 1px;padding: 0;margin: 0 8px 0 9px;height: 11px;vertical-align: top;position: relative;top: 2px;border-left: 1px solid #d0d0d0;float: left;"></span><a target="_blank" href="https://map.kakao.com?map_type=TYPE_MAP&amp;from=roughmap&amp;srcid=201522118&amp;itemId=201522118&amp;q=%EC%9E%91%EA%B5%90&amp;urlX=579378.0&amp;urlY=795525.0" style="float:left;height:15px;padding-top:1px;line-height:15px;color:#000;text-decoration: none;">지도 크게 보기</a></div></div></div> 
                </div>
                <!-- List 2 -->
                <div class="bar_content"> 
                    <h2>버킷</h2>
                    <div class="barexpl"> 
                        주소 : 경기 부천시 신흥로 170-1 위브더스테이트 603동 1층 <br>
                        영업시간 : 17:00 ~ 01:00 <br>
                        분위기 좋은 전통주펍, 매번 새로운 전통주가 준비되는 곳
                    </div>
                    <span id="test" style="CURSOR: hand" 
                        onclick= "if(plain1.style.display == 'none') {
                                    plain1.style.display='';
                                    } else {plain1.style.display = 'none';}"> 
                        <img class="down" src="./images/icon/downward-arrow.png" alt="">
                    </span>                    
                </div>
                <div id="plain1" style="display: none">
                   
                         <!-- 지도 넣을 부분  -->                    
                        <div style="font:normal normal 400 12px/normal dotum, sans-serif; width:1000px; height:332px; color:#333; position:relative"><div style="height: 300px;"><a href="https://map.kakao.com/?urlX=451058.0&amp;urlY=1110969.0&amp;itemId=332525999&amp;q=%EB%B2%84%ED%82%B7&amp;srcid=332525999&amp;map_type=TYPE_MAP&amp;from=roughmap" target="_blank"><img class="map" src="http://t1.daumcdn.net/roughmap/imgmap/05f076cefbc9ec8b0dcc239f5987248bb5e2095e7db75ae805dbd9d43ba473ec" width="998px" height="298px" style="border:1px solid #ccc;"></a></div><div style="overflow: hidden; padding: 7px 11px; border: 1px solid rgba(0, 0, 0, 0.1); border-radius: 0px 0px 2px 2px; background-color: rgb(249, 249, 249);"><a href="https://map.kakao.com" target="_blank" style="float: left;"><img src="//t1.daumcdn.net/localimg/localimages/07/2018/pc/common/logo_kakaomap.png" width="72" height="16" alt="카카오맵" style="display:block;width:72px;height:16px"></a><div style="float: right; position: relative; top: 1px; font-size: 11px;"><a target="_blank" href="https://map.kakao.com/?from=roughmap&amp;srcid=332525999&amp;confirmid=332525999&amp;q=%EB%B2%84%ED%82%B7&amp;rv=on" style="float:left;height:15px;padding-top:1px;line-height:15px;color:#000;text-decoration: none;">로드뷰</a><span style="width: 1px;padding: 0;margin: 0 8px 0 9px;height: 11px;vertical-align: top;position: relative;top: 2px;border-left: 1px solid #d0d0d0;float: left;"></span><a target="_blank" href="https://map.kakao.com/?from=roughmap&amp;eName=%EB%B2%84%ED%82%B7&amp;eX=451058.0&amp;eY=1110969.0" style="float:left;height:15px;padding-top:1px;line-height:15px;color:#000;text-decoration: none;">길찾기</a><span style="width: 1px;padding: 0;margin: 0 8px 0 9px;height: 11px;vertical-align: top;position: relative;top: 2px;border-left: 1px solid #d0d0d0;float: left;"></span><a target="_blank" href="https://map.kakao.com?map_type=TYPE_MAP&amp;from=roughmap&amp;srcid=332525999&amp;itemId=332525999&amp;q=%EB%B2%84%ED%82%B7&amp;urlX=451058.0&amp;urlY=1110969.0" style="float:left;height:15px;padding-top:1px;line-height:15px;color:#000;text-decoration: none;">지도 크게 보기</a></div></div></div>
                    
                </div>
                <!-- List 3 -->
                <div class="bar_content"> 
                    <h2>선화별당</h2>
                    <div class="barexpl"> 
                        주소 : 대전 중구 선화서로 49-1 <br>
                        영업시간 : 18:00 ~ 01:00 <br>
                        오래된 가옥을 개조하여 만든 내부가 특징, 막걸리 종류가 굉장히 다양한 곳
                    </div>
                    <span id="test" style="CURSOR: hand" 
                        onclick= "if(plain2.style.display == 'none') {
                                    plain2.style.display='';
                                    } else {plain2.style.display = 'none';}"> 
                        <img class="down" src="./images/icon/downward-arrow.png" alt="">
                    </span>
                    
                </div>
                <div id="plain2" style="display: none">
                
                         <!-- 지도 넣을 부분  -->                    
                        <div style="font:normal normal 400 12px/normal dotum, sans-serif; width:900px; height:332px; color:#333; position:relative"><div style="height: 300px;"><a href="https://map.kakao.com/?urlX=593777.0&amp;urlY=786280.0&amp;itemId=1256684068&amp;q=%EC%84%A0%ED%99%94%EB%B3%84%EB%8B%B9&amp;srcid=1256684068&amp;map_type=TYPE_MAP&amp;from=roughmap" target="_blank"><img class="map" src="http://t1.daumcdn.net/roughmap/imgmap/cf687030ec6bc2f85e5d2ea71fa7b65169988c9b22210dfaef99d732d859834b" width="998px" height="298px" style="border:1px solid #ccc;"></a></div><div style="overflow: hidden; padding: 7px 11px; border: 1px solid rgba(0, 0, 0, 0.1); border-radius: 0px 0px 2px 2px; background-color: rgb(249, 249, 249);"><a href="https://map.kakao.com" target="_blank" style="float: left;"><img src="//t1.daumcdn.net/localimg/localimages/07/2018/pc/common/logo_kakaomap.png" width="72" height="16" alt="카카오맵" style="display:block;width:72px;height:16px"></a><div style="float: right; position: relative; top: 1px; font-size: 11px;"><a target="_blank" href="https://map.kakao.com/?from=roughmap&amp;srcid=1256684068&amp;confirmid=1256684068&amp;q=%EC%84%A0%ED%99%94%EB%B3%84%EB%8B%B9&amp;rv=on" style="float:left;height:15px;padding-top:1px;line-height:15px;color:#000;text-decoration: none;">로드뷰</a><span style="width: 1px;padding: 0;margin: 0 8px 0 9px;height: 11px;vertical-align: top;position: relative;top: 2px;border-left: 1px solid #d0d0d0;float: left;"></span><a target="_blank" href="https://map.kakao.com/?from=roughmap&amp;eName=%EC%84%A0%ED%99%94%EB%B3%84%EB%8B%B9&amp;eX=593777.0&amp;eY=786280.0" style="float:left;height:15px;padding-top:1px;line-height:15px;color:#000;text-decoration: none;">길찾기</a><span style="width: 1px;padding: 0;margin: 0 8px 0 9px;height: 11px;vertical-align: top;position: relative;top: 2px;border-left: 1px solid #d0d0d0;float: left;"></span><a target="_blank" href="https://map.kakao.com?map_type=TYPE_MAP&amp;from=roughmap&amp;srcid=1256684068&amp;itemId=1256684068&amp;q=%EC%84%A0%ED%99%94%EB%B3%84%EB%8B%B9&amp;urlX=593777.0&amp;urlY=786280.0" style="float:left;height:15px;padding-top:1px;line-height:15px;color:#000;text-decoration: none;">지도 크게 보기</a></div></div></div>
                    
                </div>
                <!-- List 4 -->
                <div class="bar_content"> 
                    <h2>니아암</h2>
                    <div class="barexpl"> 
                        주소 : 대전 유성구 대학로163번길 45 1층 <br>
                        영업시간 : 18:00 ~ 24:00 <br>
                        한식 다이닝펍, 주방장 특선 요리가 준비되어 있으며 콜키지가 가능한 곳
                    </div>
                    <span id="test" style="CURSOR: hand" 
                        onclick= "if(plain3.style.display == 'none') {
                                    plain3.style.display='';
                                    } else {plain3.style.display = 'none';}"> 
                        <img class="down" src="./images/icon/downward-arrow.png" alt="">
                    </span>
                    
                </div>
                <div id="plain3" style="display: none">
            
                         <!-- 지도 넣을 부분  -->                    
                        <div style="font:normal normal 400 12px/normal dotum, sans-serif; width:1000px; height:332px; color:#333; position:relative"><div style="height: 300px;"><a href="https://map.kakao.com/?urlX=578848.0&amp;urlY=795828.0&amp;itemId=1517984876&amp;q=%EB%8B%88%EC%95%84%EC%95%94&amp;srcid=1517984876&amp;map_type=TYPE_MAP&amp;from=roughmap" target="_blank"><img class="map" src="http://t1.daumcdn.net/roughmap/imgmap/d2479931a5d6d91c947ccc2ccddf8df9b42d3c436f826121ac79682199820507" width="998px" height="298px" style="border:1px solid #ccc;"></a></div><div style="overflow: hidden; padding: 7px 11px; border: 1px solid rgba(0, 0, 0, 0.1); border-radius: 0px 0px 2px 2px; background-color: rgb(249, 249, 249);"><a href="https://map.kakao.com" target="_blank" style="float: left;"><img src="//t1.daumcdn.net/localimg/localimages/07/2018/pc/common/logo_kakaomap.png" width="72" height="16" alt="카카오맵" style="display:block;width:72px;height:16px"></a><div style="float: right; position: relative; top: 1px; font-size: 11px;"><a target="_blank" href="https://map.kakao.com/?from=roughmap&amp;srcid=1517984876&amp;confirmid=1517984876&amp;q=%EB%8B%88%EC%95%84%EC%95%94&amp;rv=on" style="float:left;height:15px;padding-top:1px;line-height:15px;color:#000;text-decoration: none;">로드뷰</a><span style="width: 1px;padding: 0;margin: 0 8px 0 9px;height: 11px;vertical-align: top;position: relative;top: 2px;border-left: 1px solid #d0d0d0;float: left;"></span><a target="_blank" href="https://map.kakao.com/?from=roughmap&amp;eName=%EB%8B%88%EC%95%84%EC%95%94&amp;eX=578848.0&amp;eY=795828.0" style="float:left;height:15px;padding-top:1px;line-height:15px;color:#000;text-decoration: none;">길찾기</a><span style="width: 1px;padding: 0;margin: 0 8px 0 9px;height: 11px;vertical-align: top;position: relative;top: 2px;border-left: 1px solid #d0d0d0;float: left;"></span><a target="_blank" href="https://map.kakao.com?map_type=TYPE_MAP&amp;from=roughmap&amp;srcid=1517984876&amp;itemId=1517984876&amp;q=%EB%8B%88%EC%95%84%EC%95%94&amp;urlX=578848.0&amp;urlY=795828.0" style="float:left;height:15px;padding-top:1px;line-height:15px;color:#000;text-decoration: none;">지도 크게 보기</a></div></div></div>
                        
                </div>
            </div>
        </div>
	<!-- 게시판 끝 -->

	<footer id="page_footer">
	</footer>
</body>
</html>