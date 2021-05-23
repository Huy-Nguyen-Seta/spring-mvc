<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:url var="newAPI" value="/api/deal"/>
<c:url var="newURL" value="/quan-tri/donedeal"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>hoá đơn</title>
	</head>

	<body>
	<c:forEach var="item" items="${model.listResult}">
	
		<div class="main-content">
		<form action="<c:url value='/quan-tri/donedeal'/>" id="formSubmit" method="get">
			
				<div class="main-content-inner" style="border-color: blue;border-width: 3px;border-style: solid">
			
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">Trang chủ</a>
							</li>
						</ul>
					
					</div>
					<a class="navbar-brand"  style="position: absolute;left: 235px;top:160px;font-family:cursive; ;color: gold;font-size: 30px ">XƯỞNG GỖ</a>
	<a>	<img  src="<c:url value='/template/Picture1.png' />" style="height: 120px;width: 120px;position: absolute;left: 270px;top:95px"></img></a>
					<div style="height: 200px;width:1310px;border-color: lightblue;border-width: 3px;border-style: solid ;position: relative;left: 5px;top: 5px">
					<p style="font-size: 30px;color:red;font-weight: 700;position: absolute;left: 550px;top:0px">HOÁ ĐƠN</p>
						<p style="font-size: 30px;color:red;font-weight: 700;position: absolute;left: 490px;top:50px"> GIÁ TRỊ GIA TĂNG</p>
						<i style="font-size: 18px;color:blue;font-weight: 700;position: absolute;left: 490px;top:100px">(Bản thể hiện của hoá đơn điện tử)</i>
						<i style="font-size: 18px;color:blue;font-weight: 700;position: absolute;left: 510px;top:130px" id="demo"></i>
						<p style="font-size: 18px;color:blue;font-weight: 700;position: absolute;left: 1000px;top:30px" id="hvn">Mã Hoá Đơn : <font style="color:black">#0000${item.id }</font> </p>
						<p style="font-size: 18px;color:blue;font-weight: 700;position: absolute;left: 1000px;top:60px" id="hvn">Mã Khách hàng : <font style="color:black">#0000${item.makh }</font> </p>
						<p style="font-size: 18px;color:blue;font-weight: 700;position: absolute;left: 1000px;top:90px" id="hvn">Ký hiệu : <font style="color:black">NQH/01</font> </p>

						</div>
						
						<div style="height: 200px;width:1310px;border-color: lightblue;border-width: 3px;border-style: solid ;position: relative;left: 5px;top: 5px">
					<p style="font-size: 18px;color:blue;font-weight: 700;position: absolute;left: 20px;top:10px">Họ và tên người mua hàng :<font style="color:black;font-size: 15px">${item.user.fullName }</font></p>
						<p style="font-size: 18px;color:blue;font-weight: 700;position: absolute;left: 20px;top:50px" id="hvn">Địa chỉ :<font style="color:black;font-size: 15px"> ${item.user.diachi }</font></p>
					<p style="font-size: 18px;color:blue;font-weight: 700;position: absolute;left: 20px;top:90px" id="hvn">Số điện thoại :<font style="color:black;font-size: 15px"> ${item.user.sdt }</font></p>
						
						<p style="font-size: 18px;color:blue;font-weight: 700;position: absolute;left: 20px;top:130px" id="hvn">Gmail : <font style="color:black;font-size: 15px">${item.user.gmail }</font></p>
						<p style="font-size: 18px;color:blue;font-weight: 700;position: absolute;left: 20px;top:170px" id="hvn">Phương thức thanh toán : <font style="color:black;font-size: 15px">Thanh toán qua ví điện tử</font> </p>
						
						
						
						</div>
							<div style="width:1310px;border-color: lightblue;border-width: 3px;border-style: solid ;position: relative;left: 5px;top: 5px">
					
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
								
							
								<div class="row">
									<div class="col-xs-12">
										<div class="table-responsive">
											<table class="table table-bordered" >
												<thead >
													<tr style="background: lightblue;color:blue">
														
														<th>Mã sản phẩm</th>
														<th>Ảnh đại diện</th>
														<th>Tên sản phẩm  </th>
														<th>Số lượng </th>
														<th>Đơn giá</th>
														<th>Thành tiền </th>
													
													</tr>
												</thead>
												<tbody>
													
														<c:forEach var="item1" items="${item.showdeal}">
														
														<tr>
														    <td>${item1.news.id}</td>
														    <td><img src="${item1.news.thumbnail}" style="height: 50px;width: 80px"/></td>
															<td>${item1.news.title}</td>
															<td>${item1.soluong}</td>
															<td>${item1.news.gia}.000VND</td>
															<td>${item1.news.giacuoi}.000VND</td>
														
														</tr>
													</c:forEach>
												
												</tbody>
											
											</table>
																		
										</div>
										<div style="height: 50px">
										<p style="font-size: 18px;color:blue;font-weight: 700;position: relative;left: 70px;top:10px" id="hvn">Tổng tiền hàng : ${item.giahoadon }.000VND</p>
																				<p style="font-size: 18px;color:blue;font-weight: 700;position: relative;left: 130px;top:10px" id="hvn">Ưu Đãi: 0%</p>
																				<p style="font-size: 18px;color:blue;font-weight: 700;position: relative;left: 98px;top:10px" id="hvn">Thành tiền : ${item.giahoadon }.000VND</p>
										
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					</div>
					<div style="height: 40px;width:1310px;border-color: lightblue;border-width: 3px;border-style: solid ;position: relative;left: 5px;top: 5px">
					
					
						
						</div>
						<div style="height: 10px"></div>
			
				</div>
			
			
		
			<ul class="pagination" id="pagination"></ul>	
											<input type="hidden" value="" id="page" name="page"/>
											<input type="hidden" value="" id="limit" name="limit"/>	
												</form>
				<button onclick="warningBeforeDelete()" style="height: 40px;left: 1100px;border-color: rgb(80, 199, 193);position: relative;width: 160px;top: -50px">Xoá đơn hàng</button>
	
											
		</div>
	
		<!-- /.main-content -->
	
		<script>
		
	var a="${item.createdDate}";
	var b=a.split(" ");
	var c=b[0].split("-");
	
	var date=c[2];
	var month=c[1];
	var year=c[0];
	document.getElementById("demo").innerText="Ngày "+date+" Tháng "+month+" Năm "+year;
	

		
		
		
		
			var totalPages = ${model.totalPage};
			var currentPage = ${model.page};
			$(function () {
		        window.pagObj = $('#pagination').twbsPagination({
		            totalPages: totalPages,
		            visiblePages: 10,
		            startPage: currentPage,
		            onPageClick: function (event, page) {
		            	if (currentPage != page) {
		            		$('#limit').val(1);
							$('#page').val(page);
							$('#formSubmit').submit();
						}
		            }
		        });
		    });
			
			function warningBeforeDelete() {
					swal({
					  title: "Xác nhận xóa",
					  text: "Bạn có chắc chắn muốn xóa hay không",
					  type: "warning",
					  showCancelButton: true,
					  confirmButtonClass: "btn-success",
					  cancelButtonClass: "btn-danger",
					  confirmButtonText: "Xác nhận",
					  cancelButtonText: "Hủy bỏ",
					}).then(function(isConfirm) {
					  if (isConfirm) {
							var ids = ${item.id};
							
							deleteNew(ids);
					  }
					});
			} 
			function deleteNew(data) {
		        $.ajax({
		            url: '${newAPI}',
		            type: 'DELETE',
		            contentType: 'application/json',
		            data: JSON.stringify(data),
		            success: function (result) {
		                window.location.href = "${newURL}?page=1&limit=1&message=delete_success";
		            },
		            error: function (error) {
		            	window.location.href = "${newURL}?page=1&limit=1&message=error_system";
		            }
		        });
		    }
			function accept(id) {
		        $.ajax({
		            url: '${newAPI}',
		            type: 'PUT',
		            contentType: 'application/json',
		            data: JSON.stringify(id),
		            success: function (result) {
		                window.location.href = "${newURL}?page=1&limit=1&message=accept_success";
		            },
		            error: function (error) {
		            	window.location.href = "${newURL}?page=1&limit=1&message=accept_system";
		            }
		        });
		    }
		</script>
					</c:forEach>
	</body>
	</html>