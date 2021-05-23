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
}</style>

<div style="background:  #FFFACD;height: 2000px">
<section>
	<div style="height: 130px">
		
	</div>
</section>
<section class="page-search"  style="background: #212529">
	<div class="container"  >
		<div class="row">
			<div class="col-md-12">
				<!-- Advance Search -->
				<div class="advance-search" >
				<form action="<c:url value='/seach'/>" id="formSubmit" method="get">
						<div class="form-row" >
							<div class="form-group col-md-4">
								<input style="background: #212529;color: white;border-color: white" type="text" class="form-control my-2 my-lg-0" id="news" name="news" placeholder="Tên sản phẩm">
							</div>
							<div class="form-group col-md-3">
								<input style="background: #212529;color: white;border-color: white" type="text" class="form-control my-2 my-lg-0" id="cate" name="cate" placeholder="Loại sản phẩm">
							</div>
							<div class="form-group col-md-3">
								<input style="background: #212529;color: white;border-color: white" type="text" class="form-control my-2 my-lg-0" id="" placeholder="Vị trí">
							</div>
							<div class="form-group col-md-2">
								
								<button type="submit" class="" style="background: black;border-color: white;height: 50px;color: white">Tìm Kiếm</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="section-sm">
	<div class="container">
		
		<div class="row">
			<div class="col-md-3">
				<div class="category-sidebar">
					<div class="widget category-list">
	<h4 class="widget-header">Các loại sản phẩm</h4>
	<ul class="category-list">
	<c:forEach var="item" items="${list}">
		<li><a href="sp?page=1&limit=9&cate=${item.id }">${item.name } <span>${item.soluongsp}</span></a></li>
		</c:forEach>
	</ul>
</div>



<div class="widget filter">
	<h4 class="widget-header">Show Produts</h4>
	<select>
		<option>Popularity</option>
		<option value="1">Top rated</option>
		<option value="2">Lowest Price</option>
		<option value="4">Highest Price</option>
	</select>
</div>

<div class="widget price-range w-100">
	<h4 class="widget-header">Price Range</h4>
	<div class="block">
						<input class="range-track w-100" type="text" data-slider-min="0" data-slider-max="5000" data-slider-step="5"
						data-slider-value="[0,5000]">
				<div class="d-flex justify-content-between mt-2">
						<span class="value">$10 - $5000</span>
				</div>
	</div>
</div>

<div class="widget product-shorting">
	<h4 class="widget-header">By Condition</h4>
	<div class="form-check">
	  <label class="form-check-label">
	    <input class="form-check-input" type="checkbox" value="">
	    Brand New
	  </label>
	</div>
	<div class="form-check">
	  <label class="form-check-label">
	    <input class="form-check-input" type="checkbox" value="">
	    Almost New
	  </label>
	</div>
	<div class="form-check">
	  <label class="form-check-label">
	    <input class="form-check-input" type="checkbox" value="">
	    Gently New
	  </label>
	</div>
	<div class="form-check">
	  <label class="form-check-label">
	    <input class="form-check-input" type="checkbox" value="">
	    Havely New
	  </label>
	</div>
</div>

				</div>
			</div>
			<div class="col-md-9">
				<div class="category-search-filter">
					<div class="row">
						<div class="col-md-6">
							<strong>Short</strong>
							<select>
								<option>Most Recent</option>
								<option value="1">Most Popular</option>
								<option value="2">Lowest Price</option>
								<option value="4">Highest Price</option>
							</select>
						</div>
						<div class="col-md-6">
							<div class="view">
								<strong>Views</strong>
								<ul class="list-inline view-switcher">
									<li class="list-inline-item">
										<a href="#" onclick="event.preventDefault();" class="text-info"><i class="fa fa-th-large"></i></a>
									</li>
									<li class="list-inline-item">
										<a href="ad-list-view.html"><i class="fa fa-reorder"></i></a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="product-grid-list">
					<div class="row mt-30">
					<c:forEach var="item" items="${model.listResult}">
						<div class="col-sm-12 col-lg-4 col-md-6">
						   <div class="single-product">
							<!-- product card -->
<div class="product-item bg-light">
	<div class="card">
		<div class="thumb-content">
			<!-- <div class="price">$200</div> -->
		
			 <div class="product-f-image">
				<img class="card-img-top img-fluid" src="${item.thumbnail }" style="height: 250px" alt="Card image cap">
				  <div class="product-hover">
                                        <a style="background: pink" onclick="clickduavaogiohang('${item.id}','${item.thumbnail}','1','${item.title}')" href=""  class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ </a>
                                        <a style="background: pink" href="ctsp?cate=${item.categoryId }&id=${item.id}" class="view-details-link"><i class="fa fa-link"></i> Xem chi tiết</a>
                                    </div>
                                    </div>
			
		</div>
		<div class="card-body">
		    <h4 class="card-title"><a href="single.html">${item.title}</a></h4>
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
						
					<form action="<c:url value='/trang-chu/sp'/>" id="formSubmit" method="get">
	
	
</form>
			</div>
		</div>
	</div>
	</div>
	</div>
</section>
<!--============================
=            Footer            =
=============================-->


</div>
<!--============================
=            Footer            =
=============================-->




</body>

</html>