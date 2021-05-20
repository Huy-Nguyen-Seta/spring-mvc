<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>


<meta charset="UTF-8">
<title>Trang chủ</title>

 <link href="<c:url value='/template/Picture1.png' />" rel="shortcut icon">
</head>

<body class="body-wrapper">

<style>
ul.pagination li a {
    font-weight: 600;
    border-radius: 3px !important;
    font-size: 10px;
    padding: 0;
    height: 40px;
    width: 40px;
    line-height: 40px;
    text-align: center;
    border-color: transparent;
    box-shadow: 0px 1px 3px 0px rgb(0 0 0 / 10%);
    color: #666;
}
ul.pagination li {
    margin-right: 10px;
    width: 40px;
    height: 40px;
    font-size: 16px;
}
.page-item.disabled .page-link {
    color: #6c757d;
    pointer-events: none;
    cursor: auto;
    background-color: #fff;
    border-color: #dee2e6;
    font-size: 10px;
}
.button:hover {
 background-color:rgb(80, 199, 193);
  background: rgb(80, 199, 193);
  color: white;
}
.button1:hover {
 background-color:white;
  background: white;
  color: none;
}
.button2:hover {
 background-color:none;
  background: none;
  color: white;
}
</style>
<div style="background: #FFFACD;height: 3900px">


<img alt="" src="https://xuongmochcm.com/wp-content/uploads/2017/03/XUONG-MOC-HCM-1.jpg" style="height:900px;width:1520px">


<div style="height: 250px ;width: 1520px">
<p style="font-size:40px;color: black;position: absolute;left: 560px;top:1000px;font-style: inherit;font-weight: 800"> BÁN CHẠY NHẤT</p>
<button class="button" style="border-color: rgb(80, 199, 193);position: absolute;left: 650px;top:1100px;height: 40px;width: 150px;font-weight: 800"  >XEM TẤT CẢ</button>

</div>
<section class="section-sm">


			<div class="col-md-9">
				
				<div class="product-grid-list">
					<div class="row mt-30">
					<c:forEach var="item" items="${model.listResult}">
						<div class="col-sm-12 col-lg-4 col-md-6" style="position: relative;left: 150px">
							<!-- product card -->
<div class="product-item bg-light">
	<div class="card">
		<div class="thumb-content">
			<!-- <div class="price">$200</div> -->
			<a href="trang-chu/sp?page=1&limit=9&cate=${item.id }">
				<img class="card-img-top img-fluid" src="${item.thumbnail}" alt="Card image cap">
			</a>
		</div>
		<div class="card-body">
		    <h4 class="card-title"><a href="single.html">${item.name}</a></h4>
		    <ul class="list-inline product-meta">
		    	<li class="list-inline-item">
		    		<a href="single.html"><i class="fa fa-folder-open-o"></i>Electronics</a>
		    	</li>
		    	<li class="list-inline-item">
		    		<a href="#"><i class="fa fa-calendar"></i>26th December</a>
		    	</li>
		    </ul>
		    <p class="card-text">${item.code }</p>
		    <div class="product-ratings">
		    	<ul class="list-inline">
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item"><i class="fa fa-star"></i></li>
		    	</ul>
		    </div>
		</div>
	</div>
</div>



</div>
	</c:forEach>
</div>
</div>
	<form action="<c:url value='/trang-chu'/>" id="formSubmit" method="get">
	
<ul class="pagination" id="pagination" style="height: 30px"></ul>	
<input type="hidden" value="" id="page" name="page"/>
<input type="hidden" value="" id="limit" name="limit"/>	
	
</form>

</div>
						
					
</section>
<img src ="https://i.pinimg.com/originals/35/85/6d/35856d97cd2de75d7b83353b8c10ebdb.gif" style="height: 350px;width: 1300px;position: absolute; top: 2800px;left: 100px"></img>
<p style="position: absolute; top: 2900px;left: 660px;font-size:30px;font-weight: 700;color: white;">HUYSHOP</p>
<p style="position: absolute; top: 2950px;left: 580px;font-size:20px;font-weight: 200;color: white;">Cập nhât thông tin sản phẩm mới</p>
<button class="button2" style="background: white;position: absolute; top: 3000px;left: 620px;height: 30px;width: 100px;border-color: white;color: none">FANPAGE</button>
<button class="button2" style="background: none;position: absolute; top: 3000px;left: 740px;height: 30px;width: 100px;border-color: white;color: white">FACEBOOK</button>
<p style="font-size:35px;color: black;position: absolute;left: 540px;top:3180px;font-style: inherit;font-weight: 800"> AWESOME FEEDBACK</p>

<img style="height:250px;width:290px;position: absolute;left: 20px;top:3340px" src="https://lh3.googleusercontent.com/proxy/WGZr1W9Ootq6QIn88xq1sWMv0sIWIDT0wED121547ar8saSA5jI1x-rZCRshKHEt4P_nMpr0GEJPdDKtVrWyq192BKzY6FiQ"></img>
<img style="height:250px;width:290px;position: absolute;left: 320px;top:3340px" src="https://gotrangtri.vn/wp-content/uploads/2019/04/anh-bia-1.jpg">
<img style="height:250px;width:290px;position: absolute;left: 620px;top:3340px" src="https://dogomynghexuanthang.com/wp-content/uploads/2021/02/ban-ghe-phong-khach-dep-1-1.png">
<img style="height:250px;width:290px;position: absolute;left: 920px;top:3340px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV3s1bRsbofJA1mufvwpITzjqZUF3isOkSPw&usqp=CAU">
<img style="height:250px;width:290px;position: absolute;left: 1220px;top:3340px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLjHwwPFAT83STYLGGFUQB-mVTKT14WncvYA&usqp=CAU">

<img style="height:250px;width:290px;position: absolute;left: 20px;top:3600px" src="https://dogocu.vn/kcfinder/upload/images/e%281%29.jpg">
<img style="height:250px;width:290px;position: absolute;left: 320px;top:3600px" src="https://toplist.vn/images/800px/do-go-my-nghe-co-truyen-thanh-luan-518390.jpg">
<img style="height:250px;width:290px;position: absolute;left: 620px;top:3600px" src="https://lh3.googleusercontent.com/proxy/WGZr1W9Ootq6QIn88xq1sWMv0sIWIDT0wED121547ar8saSA5jI1x-rZCRshKHEt4P_nMpr0GEJPdDKtVrWyq192BKzY6FiQ">
<img style="height:250px;width:290px;position: absolute;left: 920px;top:3600px" src="https://lh3.googleusercontent.com/proxy/Jfv1N-prbW7_dyyzCLguhT22pB3fE1RQL7F_yyWczsMh-Fr22Qzv1ABiG6dN_TTcQ3efmotkvkhpFcIVUCvw5U2gJRNhZlvXK840rh3a52fTOEnqwDiu71i0yXkagq3n9Sn-Kstbig">
<img style="height:250px;width:290px;position: absolute;left: 1220px;top:3600px" src="https://giuongtangtreemnhapkhau.com/files/news/304/images/Do-go-noi-that-la-gi-1.jpg">





</div>
<!--============================
=            Footer            =
=============================-->



<script type="text/javascript">
var totalPages = ${model.totalPage};
var currentPage = ${model.page};
$(function () {
    window.pagObj = $('#pagination').twbsPagination({
        totalPages: totalPages,
        visiblePages: 10,
        startPage: currentPage,
        onPageClick: function (event, page) {
        	if (currentPage != page) {
        		$('#limit').val(9);
				$('#page').val(page);
				$('#formSubmit').submit();
			}
        }
    });
});
</script>
</body>

</html>