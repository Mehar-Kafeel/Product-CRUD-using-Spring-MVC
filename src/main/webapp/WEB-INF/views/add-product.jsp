
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <%@include file="base.jsp"%>
</head>
<body>
    <div class="container mt-3">

        <div class="row">

            <div class="col-md-6 offset-md-3">

                <h1 class="text-center mb-3"> Enter product details </h1>

                    <form action="handle-product" method="post">

                        <div class="form-group">

                            <label for="name">Product name: </label>
                            <input type="text" class="form-control" id="name" name="name"
                                   placeholder="Enter product name here">

                        </div>

                        <div class="form-group">

                            <label for="description">Product description:</label>
                            <textarea class="form-control" name="description" id="description" rows="5"
                                      placeholder="Enter product description here"></textarea>

                        </div>

                        <div class="form-group">

                            <label for="price">Product price:</label>
                            <input type="text" class="form-control" id="price" name="price"
                                   placeholder="Enter product price here">

                        </div>

                        <div class="container text-center">

<%--                            to access project name--%>
<%--                            <a href="${pageContext.request.contextPath}/"></a>--%>
                            <a href="home" class="btn btn-outline-danger"> Back </a>
                            <button type="submit" class="btn btn-primary">Add</button>
                        </div>

                    </form>

            </div>

        </div>

    </div>
</body>
</html>
