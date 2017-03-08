<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>projectsRecorder edit page</title>
    </head>
    <body>
        <h1>请修改您的项目数据</h1>
        <form action="${ctx}/projectsrecorder/modify" method="post">
            <input type="hidden" name="id" value="${sessionScope.projectsrecorder.id}">
            PROJECT: <input name="project" value="${sessionScope.projectsrecorder.project}"><br>
            STARTTIME: <input name="startTime" value="${sessionScope.projectsrecorder.startTime}"><br>
            ENDTIME: <input name="endTime" value="${sessionScope.projectsrecorder.endTime}"><br>
            SCALES: <input name="scales" value="${sessionScope.projectsrecorder.scales}"><br>
            ACCOUNTANT: <input name="accountant" value="${sessionScope.projectsrecorder.accountant}"><br>
            <input type="submit" value="SAVE">
        </form>
    </body>
</html>