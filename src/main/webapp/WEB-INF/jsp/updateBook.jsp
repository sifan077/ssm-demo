<%--
  Created by IntelliJ IDEA.
  User: 思凡
  Date: 2022/5/31
  Time: 13:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
</head>
<body>
<h2>修改书籍</h2>
<form action="${pageContext.request.contextPath}/book/updateBook" method="post">
    <input type="hidden" name="bookID" value="${book.bookID}"/>
    书籍名称：<input type="text" name="bookName" value="${book.bookName}"/>
    书籍数量：<input type="text" name="bookCounts" value="${book.bookCounts}"/>
    书籍详情：<input type="text" name="detail" value="${book.detail}"/>
    <input type="submit" value="提交"/>
</form>
</body>
</html>
