<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid page-header"></div>
	<div class="container-fluid fruite py-5">
    	<div class="container py-5">
        	<h1 class="mb-4 text-center">장바구니 목록</h1>
            <div class="row g-4">
				<table class="table">
   					<tr>
    					<th class="text-center">번호</th>
					    <th class="text-center"></th>
					    <th class="text-center">상품명</th>
					    <th class="text-center">가격</th>
					    <th class="text-center">수량</th>
					    <th class="text-center">총구매가격</th>
					    <th class="text-center"></th>
   					</tr>
   					<c:forEach var="vo" items="${list }">
   						<tr>
						    <td class="text-center">${vo.cart_no }</td>
						    <td class="text-center">
     							<img src="${vo.gvo.goods_poster }" style="width: 30px;height: 30px">
    						</td>
	    					<td>${vo.gvo.goods_name }</td>
						    <td class="text-center">${vo.gvo.goods_price }</td>
						    <td class="text-center">${vo.amount }</td>
						    <td class="text-center">${vo.price * vo.amount }</td>
						    <td class="text-center">
      							<input type="button" class="btn btn-sm btn-success" value="구매" id="buyBtn" data-title="${vo.gvo.goods_name }" data-price="${vo.price }" data-no="${vo.cart_no }">
      							<a href="../goods/cart_cancel.do?no=${vo.cart_no }" class="btn btn-sm btn-primary">취소</a>
    						</td>
   						</tr>
   					</c:forEach>
 				</table>
			</div>
		</div>
	</div>
</body>
</html>