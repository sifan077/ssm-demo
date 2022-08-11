<%--
  Created by IntelliJ IDEA.
  User: 思凡
  Date: 2022/5/31
  Time: 13:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加书籍</title>
</head>
<body>
<h3>增加书籍</h3>
<form action="${pageContext.request.contextPath}/book/addBook" method="post">
    <label>书名：<input type="text" name="bookName"/></label><br/>
    <label>数量：<input type="text" name="bookCounts"/></label><br/>
    <label>描述：<input type="text" name="detail"/></label><br/>
    <input type="submit" value="提交"/>
</form>
</body>
</html>
