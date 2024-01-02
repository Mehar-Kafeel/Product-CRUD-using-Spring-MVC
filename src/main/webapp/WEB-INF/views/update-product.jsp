<%--
  Created by IntelliJ IDEA.
  User: mehar.nisa_venturedi
  Date: 1/2/2024
  Time: 12:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="base.jsp"%>
</head>
<body>
<div class="container mt-3">

    <div class="row">

        <div class="col-md-6 offset-md-3">

            <h1 class="text-center mb-3"> Modify product details </h1>

            <form action="${pageContext.request.contextPath}/handle-product" method="post">

                <div class="form-group">
<%--                    <label for="id">Product id: </label>--%>
                    <input type="hidden" class="form-control" id="id" name="id"
                           value="${product.id}">
                </div>

                <div class="form-group">

                    <label for="name">Product name: </label>
                    <input type="text" class="form-control" id="name" name="name"
                           value="${product.name}">

                </div>

                <div class="form-group">

                    <label for="description">Product description:</label>
                    <textarea class="form-control" name="description" id="description"
                              rows="5">${product.description}</textarea>

                </div>

                <div class="form-group">

                    <label for="price">Product price:</label>
                    <input type="text" class="form-control" id="price" name="price"
                           value="${product.price}">

                </div>

                <div class="container text-center">

                    <a href="home" class="btn btn-outline-danger"> Back </a>
                    <button type="submit" class="btn btn-primary">Update</button>
                </div>

            </form>

        </div>

    </div>

</div>
</body>
</html>
