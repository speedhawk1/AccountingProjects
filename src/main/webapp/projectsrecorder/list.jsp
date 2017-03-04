<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>projectsRecorder list page</title>
        <script>
            function del() { return confirm('您确定看它非常不爽了吗？？'); }
        </script>
    </head>
    <body>
        <c:import url="add.jsp"/>
        <hr/>
        <h1>您的项目清单</h1>
        <hr/>
        <table border="1">
            <tr>
                <th>序号</th>
                <th>项目名</th>
                <th>开始日期</th>
                <th>结束日期</th>
                <th>存续规模</th>
                <th>核算会计</th>
                <th colspan="2">OPERATION</th>
            </tr>
            <c:forEach var="projectsrecorder" items="${sessionScope.pagination.list}" varStatus="vs">
            <tr>
                <td>${vs.count}</td>
                <td>${projectsrecorder.project}</td>
                <td>${projectsrecorder.startTime}</td>
                <td>${projectsrecorder.endTime}</td>
                <td>${projectsrecorder.scales}</td>
                <td>${projectsrecorder.accountant}</td>
                <td><a href="${ctx}/projectsrecorder/search/${projectsrecorder.id}">EDIT</a></td>
                <td><a class="delete" href="${ctx }/projectsrecorder/remove/${projectsrecorder.id}" onclick="return del()">REMOVE</a></td>
            </tr>
            </c:forEach>
        </table>
        <c:import url="${ctx}/commons/page.jsp">
            <c:param name="path" value="projectsrecorder/${sessionScope.pagination.statement}"/>
        </c:import>
    </body>
</html>