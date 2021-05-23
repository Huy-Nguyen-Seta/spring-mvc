<%@ page import="com.laptrinhjavaweb.util.SecurityUtils" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <link href="<c:url value='/template/Picture1.png' />" rel="shortcut icon">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container" style="height: 130px">
		<a class="navbar-brand" href="http://localhost:8080/spring-mvc/trang-chu?page=1&limit=9" style="position: absolute;left: 110px;top:65px;font-family:cursive; ;color: gold;font-size: 30px ">XƯỞNG GỖ</a>
	<a href="http://localhost:8080/spring-mvc/trang-chu?page=1&limit=9">	<img  src="<c:url value='/template/Picture1.png' />" style="height: 120px;width: 120px;position: absolute;left: 130px;top:7px"></img></a>
  <div class="col-sm-7" style="position: absolute;left: 580px;top:20px">
                    <div class="shopping-item">
                        <a href="http://localhost:8080/spring-mvc/cart">Cart - <span class="cart-amunt">$800</span> <i class="fa fa-shopping-cart"></i> <span class="product-count" id="soluong">0</span></a>
                    </div>
                </div>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive" style="position: absolute;left: 900px;font-size: 30px">
			<ul class="navbar-nav ml-auto" style="font-size: 30px">
				<li class="nav-item active"><a class="nav-link" href="<c:url value='/trang-chu'/>">Trang chủ
						<span class="sr-only">(current)</span>
				</a></li>
				<security:authorize access = "isAnonymous()">
					<li style="font-size: 35px" class="nav-item"><a class="nav-link" href="<c:url value='/dang-nhap'/>">Đăng nhập</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Đăng ký</a></li>
				</security:authorize>
				<security:authorize access = "isAuthenticated()">
					<li class="nav-item"><a class="nav-link" href="#">Wellcome <%=SecurityUtils.getPrincipal().getFullName()%></a></li>
					<li class="nav-item"><a class="nav-link" href="<c:url value='/thoat'/>">Thoát</a></li>
				</security:authorize>
			</ul>
		</div>
	</div>
</nav>
<script>
	function laydanhsachgiohang(){
    var danhsachitem=new Array();
    var json=localStorage.getItem('dsitem');
    if(json!=null)
    danhsachitem=JSON.parse(json);

    return danhsachitem;
}

var danhsach =laydanhsachgiohang();

 danhsach.length


	var i = danhsach.length;
 $( "span#soluong" ).text( i );
</script>