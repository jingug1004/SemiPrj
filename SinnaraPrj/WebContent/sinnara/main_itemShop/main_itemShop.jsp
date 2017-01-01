<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file ="/sinnara/commons/_header.jspf" %>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>아이텝 샵</title>
<link rel="stylesheet" href="/SinnaraPrj/sinnara/assets/css/bootstrap.min.css" />
<!-- 부트스트렙에서 자바스크립트를 쓰려면, jquery도 있어야 함. jquery가 반드시 먼저, 임포트 -->

<script src="/SinnaraPrj/sinnara/assets/js/jquery-3.1.1.min.js"></script>
<script src="/SinnaraPrj/sinnara/assets/js/bootstrap.min.js"></script>
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="col-md-2">
				<h3>아이템 샵</h3>
				<ul class="nav nav-pills nav-stacked">
					<li class="active"><a href="#tab1" data-toggle="tab">이용권
							구매 ></a></li>
					<li><a href="#tab2" data-toggle="tab">딱지 충전</a></li>
					<li><a href="#tab3" data-toggle="tab">쿠폰 등록</a></li>
					<li><a href="#tab4" data-toggle="tab">홍보 아이템</a></li>
					<li><a href="#tab5" data-toggle="tab">예약 아이템</a></li>
					<li><a href="#tab6" data-toggle="tab">후원 쿠폰</a></li>
					<li><a href="#tab7" data-toggle="tab">비회원 이용권 안내</a></li>
				</ul>
			</div>
			<div class="col-md-9">
				
				<!-- tabs-below tab 메뉴 밑에 내용이 나온다. -->
				<!-- id 지정해주고, data-toggle을 이용해서 연결함 -->

				<div class="tab-content">
					<div class="tab-pane active" id="tab1">
					<h4><img src="http://www.joara.com/images/content/itemshop/t_utilize_select.gif" alt="이용권 선택"></h4>
						<table class="table table-hover table-bordered" >
							<colgroup>
								<col style="width: 30px;">
								<col style="width: 100px;">
								<col style="width: 30px;">
							</colgroup>
							<thead>
								<tr align="center">
									<th style="text-align : center;">분류</th>
									<th style="text-align : center;">이용권 종류</th>
									<th style="text-align : center;">금액</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td style="vertical-align : middle;"  bgcolor="#ffcccc" class="sub_tit" rowspan="12" ><strong >성인 이용권</strong></td>
									<td><label><input type="radio"
											name="no_good" >노블레스 자유 <strong class="day"
											style="width: 34px;">1</strong>일 이용권</label></td>
									<td style="text-align: right;"><strong>2,400 원</strong><span
										></span></td>
								</tr>
								<tr>
									<td ><label><input type="radio"
											name="no_good">노블레스
											자유 <strong class="day" style="width: 34px;">3</strong>일 이용권</label></td>
									<td style="text-align: right;"><strong>4,900 원</strong><span
										><img
											src="http://www.joara.com/images/content/itemshop/ico_discount_32.gif"></span></td>
								</tr>
								<tr>
									<td ><label><input type="radio"
											name="no_good">노블레스 자유 <strong class="day"
											style="width: 34px;">30</strong>일 이용권</label></td>
									<td style="text-align: right;"><strong>24,900 원</strong><span
										><img
											src="http://www.joara.com/images/content/itemshop/ico_discount_65.gif"></span></td>
								</tr>
								<tr>
									<td ><label><input type="radio"
											name="no_good">노블레스 자유 <strong class="day"
											style="width: 34px;">60</strong>일 이용권</label></td>
									<td style="text-align: right;"><strong>39,900 원</strong><span
										><img
											src="http://www.joara.com/images/content/itemshop/ico_discount_72.gif"></span></td>
								</tr>
								<tr>
									<td ><label><input type="radio"
											name="no_good">노블레스 자유 <strong class="day"
											style="width: 34px;">90</strong>일 이용권</label></td>
									<td style="text-align: right;"><strong>49,900 원</strong><span
										><img
											src="http://www.joara.com/images/content/itemshop/ico_discount_77.gif"></span></td>
								</tr>
								<tr>
									<td bgcolor="#ffffcc"><label><input type="radio"
											name="no_good">로맨스 장르전용 <strong
											class="day" style="width: 34px;">1</strong>일 이용권</label></td>
									<td bgcolor="#ffffcc" style="text-align: right;"><strong>1,500 원</strong><span
										></span></td>
								</tr>
								<tr>
									<td  bgcolor="#ffffcc"><label><input type="radio"
											name="no_good">로맨스 장르전용 <strong
											class="day" style="width: 34px;">3</strong>일 이용권</label></td>
									<td bgcolor="#ffffcc" style="text-align: right;"><strong>3,000 원</strong><span
										><img
											src="http://www.joara.com/images/content/itemshop/ico_discount_33.gif"></span></td>
								</tr>
								<tr>
									<td bgcolor="#ffffcc" ><label><input type="radio"
											name="no_good">로맨스 장르전용 <strong
											class="day" style="width: 34px;">30</strong>일 이용권</label></td>
									<td bgcolor="#ffffcc" style="text-align: right;"><strong>17,000 원</strong><span
										><img
											src="http://www.joara.com/images/content/itemshop/ico_discount_62.gif"></span></td>
								</tr>
								<tr>
									<td bgcolor="#ffffcc" ><label><input type="radio"
											name="no_good">로맨스 장르전용 <strong
											style="width: 34px;">60</strong>일 이용권</label></td>
									<td bgcolor="#ffffcc" style="text-align: right;"><strong>23,000 원</strong><span
										><img
											src="http://www.joara.com/images/content/itemshop/ico_discount_74.gif"></span></td>
								</tr>
								<tr >
									<td bgcolor="#ffffcc" ><label><input type="radio"
											name="no_good" >로맨스 장르전용 <strong
											style="width: 34px;">90</strong>일 이용권</label></td>
									<td bgcolor="#ffffcc" style="text-align: right;"><strong>27,000 원</strong><span
										><img
											src="http://www.joara.com/images/content/itemshop/ico_discount_80.gif"></span></td>
								</tr>
								<tr>
									<td ><label><input type="radio"
											name="no_good">노블레스 야간 <strong
											class="day" style="width: 34px;">1</strong>일 이용권</label></td>
									<td style="text-align: right;"><strong>1,200 원</strong><span
										></span></td>
								</tr>
								<tr>
									<td ><label><input type="radio"
											name="no_good">노블레스 야간 <strong class="day"
											style="width: 34px;">30</strong>일 이용권</label></td>
									<td style="text-align: right;"><strong>13,000 원</strong><span
										><img
											src="http://www.joara.com/images/content/itemshop/ico_discount_64.gif"></span></td>
								</tr>
								<tr>
									<td style="vertical-align : middle;"  bgcolor="#99CCFF" class="sub_tit" rowspan="8"><strong>청소년 이용권</strong></td>
									<td ><label><input type="radio"
											name="no_good">노블레스 청소년 자유 <strong class="day"
											style="width: 34px;">1</strong>일 이용권</label></td>
									<td style="text-align: right;"><strong>1,500 원</strong><span
										></span></td>
								</tr>
								<tr>
									<td ><label><input type="radio"
											name="no_good">노블레스 청소년 자유 <strong class="day"
											style="width: 34px;">30</strong>일 이용권</label></td>
									<td style="text-align: right;"><strong>17,000 원</strong><span
										><img
											src="http://www.joara.com/images/content/itemshop/ico_discount_62.gif"></span></td>
								</tr>
								<tr>
									<td ><label><input type="radio"
											name="no_good">노블레스 청소년 자유 <strong class="day"
											style="width: 34px;">60</strong>일 이용권</label></td>
									<td style="text-align: right;"><strong>23,000 원</strong><span
										><img
											src="http://www.joara.com/images/content/itemshop/ico_discount_74.gif"></span></td>
								</tr>
								<tr>
									<td ><label><input type="radio"
											name="no_good">노블레스 청소년 자유 <strong class="day"
											style="width: 34px;">90</strong>일 이용권</label></td>
									<td style="text-align: right;"><strong>27,000 원</strong><span
										><img
											src="http://www.joara.com/images/content/itemshop/ico_discount_80.gif"></span></td>
								</tr>
								<tr>
									<td bgcolor="#ffffcc" ><label><input type="radio"
											name="no_good">로맨스 장르전용 청소년 <strong
											class="day" style="width: 34px;">1</strong>일 이용권</label></td>
									<td bgcolor="#ffffcc" style="text-align: right;"><strong>1,200 원</strong><span
										></span></td>
								</tr>
								<tr>
									<td bgcolor="#ffffcc" ><label><input type="radio"
											name="no_good">로맨스 장르전용 청소년 <strong
											class="day" style="width: 34px;">30</strong>일 이용권</label></td>
									<td bgcolor="#ffffcc" style="text-align: right;"><strong>13,000 원</strong><span
										><img
											src="http://www.joara.com/images/content/itemshop/ico_discount_64.gif"></span></td>
								</tr>
								<tr>
									<td bgcolor="#ffffcc" ><label><input type="radio"
											name="no_good">로맨스 장르전용 청소년 <strong
											class="day" style="width: 34px;">60</strong>일 이용권</label></td>
									<td bgcolor="#ffffcc" style="text-align: right;"><strong>19,900 원</strong><span
										><img
											src="http://www.joara.com/images/content/itemshop/ico_discount_72.gif"></span></td>
								</tr>
								<tr>
									<td bgcolor="#ffffcc" ><label><input type="radio"
											name="no_good">로맨스 장르전용 청소년 <strong
											class="day" style="width: 34px;">90</strong>일 이용권</label></td>
									<td bgcolor="#ffffcc" style="text-align: right;"><strong>25,000 원</strong><span
										><img
											src="http://www.joara.com/images/content/itemshop/ico_discount_77.gif"></span></td>
								</tr>
                                      <!-- On rows -->
					</tbody>
						</table>
					</div>
					<div class="tab-pane" id="tab2">연락처</div>
					<div class="tab-pane" id="tab3">정보</div>
				</div>

			</div>
		</div>
	</div>
	<%@ include file="/sinnara/commons/_footer.jspf" %>
</body>
</html>