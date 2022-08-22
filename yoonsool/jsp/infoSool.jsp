<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset='utf-8'>
<title>우리술 윤술</title>
<link rel="icon" type="image/x-icon" href="./images/icon/yoonsolremove.png">
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css"  />
<link rel="stylesheet" type="text/css" href="./css/infoSool.css" />
<link rel="stylesheet" type="text/css" href="./css/head.css" />
<link rel="stylesheet" type="text/css" href="./css/footer.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>

<script>
	window.onload = function(){
	    $("#page_footer").load("./footer.do");
	    $("#header").load("./head.do");
	    
	    infoSoolGet();	        	   
	}

	
function infoSoolGet(){	
	$.ajax({
		url: "/yoonsool/getinfosool.do"
		,type:"post"
		,contentType:"application/x-www-form-urlencoded; charset=UTF-8"
		,success:function(data){
									
			let obj = JSON.parse(data);
			console.log("obj: ", obj);
			console.log("obj.results[0].data[0]: " , obj.results[0].data[0]);
			console.log("obj.results[0].data[0].ratio: " , obj.results[0].data[0].ratio);
			console.log("obj.results[1].data[0].ratio: " , obj.results[1].data[0].perid);
			
			let tableInfoVal = "";
			for(let i = 0 ; i < 6 ; i++){
				tableInfoVal +="<tr>";
				for(let j = 0 ; j < 5 ; j++){
					if(j == 0){
						tableInfoVal +="<td>"+obj.results[0].data[i].period+"</td>";
					}else{
						tableInfoVal +="<td>"+obj.results[j-1].data[i].ratio+"</td>";
					}
				}
				tableInfoVal +="</tr>";
			}			
			$("#infoTable > tbody").html(tableInfoVal);		
			
			let chartInfoVal = "";
						
		}
		,error:function(){
			alert("error");
		}
	});
	
	
};	

</script>
<body>
    <div id="header">
        <!-- header -->
    </div> 
    <div class="intro_bg">
            <div class="intro_text">
                <h1>우리 술 정보</h1>
                <br>
                <h4>우리술 검색량 추이(2022년 상반기)</h4>
            </div>
        </div>
 	<div class="chart">
 	<canvas id="myChart" width="800" height="600"></canvas>
	</div>
	
    <div class="table" id="table">          

       	<table class="table table-striped table-bordered table-hover" id="infoTable">
       		<thead>
					<tr>
						<th>기간/키워드</th>
						<th>전통주, 우리술</th>
						<th>막걸리, 탁주</th>
						<th>청주, 약주</th>
						<th>소주, 맥주</th>
					</tr>
				</thead>
			<tbody>
			
			</tbody>	     	
       	</table>
    </div>
    
    
    
    <footer id="page_footer">
        <!-- footer는 위에서 연결~ -->
    </footer>
    
<script>

const labels = [ '1월',  '2월',  '3월',  '4월',  '5월',  '6월'	];
const DATA_COUNT = 6;

const data = {
		  labels: labels,
		  datasets: [
			  {
			    label: '우리술,전통주',
			    borderColor: '#ffa6b9',
			    backgroundColor: '#ffb1c1',
			    data: [24, 16, 19, 21, 20, 17]
			  },
			  {		label: '막걸리, 탁주',
				    borderColor: '#36a2eb',
				    backgroundColor: '#9ad0f5',
				    data: [33, 29, 34, 33, 35, 46]
				  },
			  {		label: '청주,약주',
				    borderColor: '#4bc0c0',
				    backgroundColor: '#a5dfdf',
				    data: [94, 82, 94, 89, 91, 100]
				  },  
			  {		label: '소주, 맥주',
				    borderColor: '#ffcd56',
				    backgroundColor: '#ffe6aa',
				    data: [43, 60, 52, 55, 63, 67]
				  } 	  
		  ]
		};

const ctx = document.getElementById('myChart').getContext('2d');

const myChart = new Chart(ctx, {
    type: 'line',
    data: data,
});
</script>
</body>
</html>