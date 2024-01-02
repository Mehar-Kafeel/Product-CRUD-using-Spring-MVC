<%--
  Created by IntelliJ IDEA.
  User: mehar.nisa_venturedi
  Date: 1/1/2024
  Time: 12:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <%@include file="base.jsp"%>
    <title>Title</title>
</head>
<body>

    <div class="container mt-3">

        <div class="row">

            <div class="col-md-12">
                <h1 class="text-center mb-3">Welcome to Product App</h1>

                <table class="table">
                    <thead class="thead-dark">
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Product Name</th>
                        <th scope="col">Description</th>
                        <th scope="col">Price</th>
                        <th scope="col">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${products}" var="product">
                            <tr>
                                <td>TECHONLY${product.id}</td>
                                <td>${product.name}</td>
                                <td>${product.description}</td>
                                <td class="font-weight-bold">${product.price}</td>
                                <td>
                                    <a href="delete/${product.id}"><i style="font-size: 20px" class="fa-solid fa-trash-can text-danger"></i></a>
                                    <a href="update/${product.id}"><i style="font-size: 20px" class="fa-solid fa-pen-to-square"></i></a>
                                </td>
                            </tr>
                        </c:forEach>

                    </tbody>
                </table>

                <div class="container text-center">
                    <a href="add-product" class="btn btn-outline-success">Add Product</a>
               </div>
            </div>
        </div>

    </div>
</body>
</html>
