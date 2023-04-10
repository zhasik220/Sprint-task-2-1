<%@ page import="models.Task" %>
<%@ page import="db.DBManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%Long id= Long.parseLong(request.getParameter("task_id"));%>
    <%@include file="head.jsp"%>
    <title>Task <%=id%></title>
</head>
<body>

<%@include file="navbar.jsp"%>
<%
    Task task= DBManager.getTask(id);
    if (task!=null){
%>
<div class="container">
        <div class="row">
            <div class="col-12">
                <label class="form-label">Name:</label>
                <input type="text" class="form-control" value="<%=task.getName()%>" readonly>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <label class="form-label">Description:</label>
                <textarea class="form-control" rows="5" name="description" readonly><%=task.getDescription()%></textarea>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <label class="form-label">Deadline:</label>
                <input type="date" class="form-control" value="<%=task.getDateToInputValue()%>" readonly>
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-12">
                <label class="form-label">Done:</label>
                <input type="text" class="form-control" value="<%=task.getDoneYesOrNo()%>" readonly>
            </div>
        </div>
        <div class="row ">
            <div class="col-12">
                <%@include file="editModal.jsp"%>
                <%@include file="deleteModal.jsp"%>
            </div>
        </div>
</div>

<%
    }
    else {
%>
<div class="row">
    <div class="col-12 text-center">
        <h1>Task Not Found</h1>
    </div>
</div>
<%
    }
%>
</body>
</html>
