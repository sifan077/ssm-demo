<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 思凡
  Date: 2022/5/31
  Time: 12:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询全部书籍</title>
</head>
<body>
<h1>书籍展示</h1>
<form action="${pageContext.request.contextPath}/book/queryBook" method="post">
    <label>请输入书籍名字:<input type="text" name="bookName"> <input type="submit"></label>
</form>
<br>
<div>
    <table>
        <thead>
        <tr>
            <th>书籍编号</th>
            <th>书籍名称</th>
            <th>书籍数量</th>
            <th>书籍详情</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="book" items="${list}">
            <tr>
                <td>${book.bookID}</td>
                <td>${book.bookName}</td>
                <td>${book.bookCounts}</td>
                <td>${book.detail}</td>
                <td><a href="${pageContext.request.contextPath}/book/toUpdateBook?id=${book.bookID}">修改</a></td>
                <td><a href="${pageContext.request.contextPath}/book/del/${book.bookID}">删除</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
