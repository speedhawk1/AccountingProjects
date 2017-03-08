<%@ page contentType="text/html;charset=UTF-8" language="java" %><%@ include file="commons/inc.jsp" %>
<html>
<head>
    <title></title>
</head>
<body>
<c:if test="${sessionScope.user eq null}">
    <c:redirect url="/"/>
</c:if>
<h1>信托财务部台帐系统</h1>
欢迎您，${sessionScope.user.username}<br/>
<a href="${ctx}projectsrecorder/list">进入查询界面</a>
<a href="${ctx}user/logout">LOG OUT</a>
</body>
</html>
