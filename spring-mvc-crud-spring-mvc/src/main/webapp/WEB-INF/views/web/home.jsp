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

<img style="height:250px;width:290px;position: absolute;left: 20px;top:3340px" src="https://lh3.googleusercontent.com/1Ulzs_PR00WvqK_2_SLp_olQYXqNolzgdhSjSRTm9gw8nwsluoV2Q5IdIvD22daSACg1ZTaB9KKs8yq1IUREkow6a5CDnf7Q99BPu40wuroosjGUhfF5fFT7jnoWMP92FpNrtkdywYi-La4W0_9gvoIZNLiO7tMntrPEOqIBQhCa7ySO4JaMuz3mWeCYdq7ENxCR0I75c1wUhXVFsG6v7G7DGmuF0K_dakPw-PxthRBQjSPAyhWiVxnf85QwpN2vUfbwJuHNecUl37-S3Co4THO5za016hDvIm0XlAlyJ-2i8zvsbpD1KhoLMrpM0rDLbhzTqYnt9raE7waqLzX8FdM-15_THkSIcKVYXrxJuox0ksDmfehfefSjP8M1gPGhkUvkGEkPeC0mkBa2aLgZ2169cmhDjGAkVnYv_u40s77jPUUFuQIm6ulivfHOIi9iVyi-rVpeVP9zDBTNTqQuNEzTQLXD4QlwG4s2qMxlQgC-3T5G3WpOpyyONF6-sMeXuL0CVdkjtZiepNnGo3FsztYg7aLh1gBq2W_H90RL6JmqFs1s1KZVO8mmXBa6Zuor203jHdP6yRi5CXZVbWnMl183EKNVmey4lk01M5HINl1A5MYabXHXwtScSvlcFwQbHzSFhXFmqpc6Hnb2eUqBfmIoPjv7ulLiyO9aM01G2iaGehvdiqkkN884Pxe3DpOZkIo94dQyBzqGuyiw3UROxRw=w259-h194-no?authuser=0"></img>
<img style="height:250px;width:290px;position: absolute;left: 320px;top:3340px" src="https://gotrangtri.vn/wp-content/uploads/2019/04/anh-bia-1.jpg">
<img style="height:250px;width:290px;position: absolute;left: 620px;top:3340px" src="https://dogomynghexuanthang.com/wp-content/uploads/2021/02/ban-ghe-phong-khach-dep-1-1.png">
<img style="height:250px;width:290px;position: absolute;left: 920px;top:3340px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV3s1bRsbofJA1mufvwpITzjqZUF3isOkSPw&usqp=CAU">
<img style="height:250px;width:290px;position: absolute;left: 1220px;top:3340px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLjHwwPFAT83STYLGGFUQB-mVTKT14WncvYA&usqp=CAU">

<img style="height:250px;width:290px;position: absolute;left: 20px;top:3600px" src="https://dogocu.vn/kcfinder/upload/images/e%281%29.jpg">
<img style="height:250px;width:290px;position: absolute;left: 320px;top:3600px" src="https://toplist.vn/images/800px/do-go-my-nghe-co-truyen-thanh-luan-518390.jpg">
<img style="height:250px;width:290px;position: absolute;left: 620px;top:3600px" src="https://lh3.googleusercontent.com/qSdeYbP0v1ZYgH3lBxOfNlgDesmL-l_jevO3QpLM25gi7VFlbj8FR9LOy-g3tzGXGa5oqD9_QyZ6oMylDfJAvguaukSOKgyIUt0Ci06zSeXY-Botj1E2I6yic2nqnYnJj7p8ktJnM5_K31M89_DePy7IfA-lcu4_rgPaMZz33gURew9ZnGl_9CKkagPLmgtOvt_H4_8hIk6hn2yW7eGFWmnhNZxdysmzwzXEu9pteeedsx2UvXFRevSNonLuXD1_psGjuE2ssoF7LIZqdvmFEiSHu0uUeAk_geJJDYsVh7QqQmoNMDhCH4Cca2yZMGrBehYHgQ5xNXZ0JgW0cJ59pUrhR7QRU9ZxWRBivBYCON3jwtD8GrxisdGxCOl36EF6KvBb2aw1VHA1qooJHgQKT5AvZp0TWQ1xFGQLbF-hETETfoFtgjaId27T2lZv0B6ydiJCML8vdeu5k4rgLK4F5V65GKjCqK11OLKZBUTdN5G3-gGd_DHF1x9PhU5pK29jZThhilYJMhLt55QIqS3PRUXFU7v815XTEa90QtUevb5aX4LZ0WiuspX4wsXNM49hpw2RDE4CCBWEwMq55cFjVQZ1J687V7AP2YGU86tY9OcquNJ9FxnYkKt7oZkXkQ3x0MvdtmIRct-D6MgZXX_KGBJeuAWlVpZFQwXxzHWSihe0dZZaY0lgHsESyMuQf79TEKlqs5X_2v7fTHDHF0MmCCs=w259-h194-no?authuser=0">
<img style="height:250px;width:290px;position: absolute;left: 920px;top:3600px" src="https://lh3.googleusercontent.com/xNr0JCzs9hnjhGLEyHMXsMnQx5PBTIJpWhyG2dtcJ-sf5_wJvgcroSczIvY7jqLpqB43O4ytBNFUW8rmRGVGTbtJVtOTdjT3b2x5lqJ4QdjkYMpTzbPbE5x8N4rnWmbPUOZYZkopAOoDmNty5Sje9cRb_R7iEacBuNxceWvKiyeI1a8hsPi5nRcfp9Sl8edWjYsdpZ1o-skf5OWNIz1h1YV7mkG_RFXs7MRoc9eGbZD113Bpv3Z7feOzNhbzM-fR56unfxZrbpq2ijXEqYNfWNk220dQBYFHaBnPofZJmOZzkH00Gv8Z1y_OVPyao23Xy6FyJudDgBHNrQNqN5aSkGJQwJn1-dN4lPTma3pU4_cK-2m2xpSDjOymJBSDPasKnydJtIUfwfgX_Wxf-xDQ5MjWP89XLG_ItMQMzKtKeDrjl_giIDZe72nxDspW_TEQ8qEBdeiWQgdZF_oVajdxGXQj7OODTJoHmDcqBNYOO-dBEbZYGAaN8EZ_FhlgDXJeRpg4ARlUDKa9Avc8r1jBDw4OWq4UqmzQVkRCCX_jJSFXMMvVIsPt-7JQ3hxuluK-8pA1N1bK0a409M_23lAz9VtguuVJA85YIKQIoA6JroWQ-YDweinUS59Lp2eHkviWAMqKvANtGSC84mvSYypdYMWIGABq1Q1CZb1SFOsyWwITjrQXkQazszF7G-qWbpHIhgw7xhXgAzu5WItH8ZllEkc=w797-h451-no?authuser=0">
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