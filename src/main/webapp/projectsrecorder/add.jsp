<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>projectsRecorder add page</title>
    </head>
    <body>
        <h1>请在这里录入您的项目信息，谢谢！</h1>
        <form action="${ctx}/projectsrecorder/add" method="post">
            <input name="project" placeholder="PROJECT"><br>
            <input name="startTime" placeholder="STARTTIME"><br>
            <input name="endTime" placeholder="ENDTIME"><br>
            <input name="scales" placeholder="SCALES"><br>
            <input name="accountant" placeholder="ACCOUNTANT"><br>
            <input type="submit" value="ADD">
        </form>
    </body>
</html>