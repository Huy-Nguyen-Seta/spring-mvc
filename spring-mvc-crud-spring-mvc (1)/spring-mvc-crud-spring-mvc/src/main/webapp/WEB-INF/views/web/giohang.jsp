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
			<style>
.button2:hover {
 background-color:black;
  background: black;
  color: white;
}
</style>

<div style="height: 2500px">

	<div style="height: 130px">
		
	</div>
		<div class="col-md-10 offset-md-1 col-lg-8 offset-lg-0" style="width: 1520px">
				<!-- Recently Favorited -->
				<div class="widget dashboard-container my-adslist" style="width: 1520px">
					<h3 class="widget-header" style="width: 1520px;height: 200px"><p style="position: absolute;left: 600px;font-size: 60px;top:50px;color:#606060 ">GIỎ HÀNG</p></h3>
					<table class="table table-responsive product-dashboard-table" style="width: 1520px">
						<thead>
							<tr>
								<th>ẢNH ĐẠI ĐIỆN</th>
								<th style="width: 200px">TIÊU ĐỀ </th>
								<th style="width: 300px">GIÁ</th>
								<th style="width: 200px">SỐ LƯỢNG</th>
							
								<th class="text-center" style="width: 200px">HÀNH ĐỘNG</th>
							</tr>
						</thead>
						<tbody>
							
							<tr>

								<td class="product-thumb" style="width:200px; height:140px">
									<img style=" width:380px; height:140px " src="https://gotrangtri.vn/wp-content/uploads/2019/04/do-go-noi-that-phong-khach.jpg"  alt="image description"></td>
								<td class="product-details">
									<h3 class="title">Macbook Pro 15inch</h3>
									<span class="add-id"><strong>Ad ID:</strong> ng3D5hAMHPajQrM</span>
									<span><strong>Posted on: </strong><time>Jun 27, 2017</time> </span>
									<span class="status active"><strong>Status</strong>Active</span>
									<span class="location"><strong>Location</strong>Dhaka,Bangladesh</span>
								</td>
								<td style="font-size: 30px;color: #606060">700.000Đ</td>
                                        <td class="product-quantity">
                                                <div class="quantity buttons_added">
                                                    <input type="button" class="minus" value="-" style="background: #606060">
                                                    <input type="number" size="4" class="input-text qty text" title="Qty" value="1" min="0" step="1">
                                                    <input type="button" class="plus" value="+" style="background : #606060">
                                                </div>
                                            </td>								<td class="action" data-title="Action">
									<div class="">
										<ul class="list-inline justify-content-center">
											
											<li class="list-inline-item">
												<a data-toggle="tooltip" data-placement="top" title="Delete" class="delete" href="">
													<i class="fa fa-trash"></i>
												</a>
											</li>
										</ul>
									</div>
								</td>
							</tr>
						</tbody>
					</table>

				</div>

				

			</div>

			<button class="button2" style="position: absolute;left: 1200px;top:700px;height: 50px;width: 130px ">xoá giỏ hàng</button>
			<button class="button2" style="position: absolute;left: 1350px;top:700px;height: 50px;width: 130px">thanh toán giỏ hàng</button>

</div>
</body>

</html>