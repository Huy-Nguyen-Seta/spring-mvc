<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>


<meta charset="UTF-8">
<title>Trang chủ</title>

 <link href="<c:url value='https://gotrangtri.vn/wp-content/uploads/2019/04/do-go-noi-that-phong-khach.jpg' />" rel="shortcut icon">
</head>


<body class="body-wrapper">
<div style="background:  #FFFACD;height: 2500px">

	<div style="height: 130px">
		
	</div>
	<div class="slider-area">
        	<!-- Slider -->
			<div class="block-slider block-slider4">
				<ul class="" id="bxslider-home4">
					<li>
						<img src="${model.thumbnail }" alt="Slide">
						
					</li>
					<li><img src="${model.thumbnail }" alt="Slide">
						
					</li>
					<li><img src="${model.thumbnail }" alt="Slide">
						
					</li>
					<li><img src="${model.thumbnail }" alt="Slide">
						
					</li>
				</ul>
		</div>
  
</div>
 <div class="col-sm-7" style="position: absolute;left: 20px;top:800px">
                    <div class="shopping-item" style="border-width: 3px">
                        <a onclick="clickduavaogiohang('${model.id}','${model.thumbnail}','${model.gia }','${model.title}')" href="">Thêm vào giỏ - <span class="cart-amunt">${model.gia}.000Đ</span> <i class="fa fa-shopping-cart"></i> </a>
                    </div>
                </div>
 <!-- End slider area -->
    
<div style="height: 600px; border-color: red;border-radius: 50px;width: 1400px;border-width:10px;position:relative ;background:#F5DEB3;left: 60px;top: 50px">
<p style="font-size: 40px;font-weight:900;position: absolute;left: 530px;top: 60px;color: black;font-family: serif;">${model.title }</p>

<p style="font-size: 20px;font-weight:900;position: absolute;left: 100px;top: 160px;color: black;font-family: cursive">+Mô tả sản phẩm:</p>
<p style="font-size: 20px;font-weight:900;position: absolute;left: 150px;top: 190px;color: black;width: 1200px;font-family: cursive;">+${model.content }</p>
<p style="font-size: 20px;font-weight:900;position: absolute;left: 100px;top: 360px;color: black;font-family: cursive">+Chất liệu :${model.chatlieu}</p>
<p style="font-size: 20px;font-weight:900;position: absolute;left: 100px;top: 460px;color: black;font-family: cursive">+Kích cỡ :   ${model.chieudai }M x ${model.chieurong }M</p>
<p style="font-size: 20px;font-weight:900;position: absolute;left: 100px;top: 560px;color: black;font-family: cursive">+Số lượng tồn : ${model.soluongton } Sản phẩm</p>

</div>
<section class="popular-deals section bg-gray" style="background:  #FFFACD">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section-title">
					<h2>Một số sản phẩm liên quan</h2>
					<p>Một số sản phẩm có thể bạn sẽ thích</p>
				</div>
			</div>
		</div>
		<div class="row">
			<!-- offer 01 -->
			<div class="col-lg-12">
				<div class="trending-ads-slide">
			<c:forEach var="item" items="${model.listResult}">
					<div class="col-sm-12 col-lg-4">
					 <div class="single-product">
						<!-- product card -->
<div class="product-item bg-light">
	<div class="card">
		<div class="thumb-content">
			 <div class="product-f-image">
				<img class="card-img-top img-fluid" src="${item.thumbnail }" style="height: 250px" alt="Card image cap">
				  <div class="product-hover">
                                        <a onclick="clickduavaogiohang('${item.id}','${item.thumbnail}','${item.gia }','${item.title}')" href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</a>
                                        <a href="ctsp?cate=${cate }&id=${item.id}" class="view-details-link"><i class="fa fa-link"></i> Xem chi tiết</a>
                                    </div>
                                    </div>
		</div>
		<div class="card-body">
		    <h4 class="card-title"><a href="single.html">${item.title }</a></h4>
		    <ul class="list-inline product-meta">
		    	<li class="list-inline-item">
		    		<a href="single.html"><i class="fa fa-folder-open-o"></i>Electronics</a>
		    	</li>
		    	<li class="list-inline-item">
		    		<a href="#"><i class="fa fa-calendar"></i>26th December</a>
		    	</li>
		    </ul>
		    <p class="card-text">${item.shortDescription }</p>
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
					</div>
				
				</c:forEach>
				</div>
			</div>
			
			
		</div>
	</div>
</section>
</div>
</body>

</html>