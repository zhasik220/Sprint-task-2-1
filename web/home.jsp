<%@ page import="java.util.ArrayList" %>
<%@ page import="models.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HomePage</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="container">
    <%@include file="addModal.jsp"%>

    <table class="table">
        <thead>
        <th>ID</th>
        <th>Name</th>
        <th>Deadline</th>
        <th>Done</th>
        <th>Details</th>
        </thead>

        <tbody>
        <%
            ArrayList<Task> tasks= (ArrayList<Task>) request.getAttribute("tasks");
            for (Task task : tasks) {
        %>
        <tr>
            <td><%=task.getId()%></td>
            <td><%=task.getName()%></td>
            <td><%=task.getDeadlineDate()%></td>
            <td><%=task.getDoneYesOrNo()%></td>
            <td><a href="/details?task_id=<%=task.getId()%>" class="btn btn-dark">Details</a></td>
        </tr>

        <%
            }
        %>
        </tbody>
    </table>




</div>
</body>
</html>
