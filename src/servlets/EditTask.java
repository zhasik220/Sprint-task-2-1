package servlets;

import db.DBManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Task;

import java.io.IOException;

@WebServlet(value = "/editTask")
public class EditTask extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       Long id=Long.parseLong(request.getParameter("task_id"));
        String name=request.getParameter("name");
        String description=request.getParameter("description");
        String deadLine=request.getParameter("deadline");
        String isDone=request.getParameter("done");
        Task task=new Task();
        task.setId(id);
        task.setName(name);
        task.setDescription(description);
        task.setDeadlineDate(deadLine);
        task.setDone(isDone.equals("Yes")?true:false);
        DBManager.updateTask(task);
        response.sendRedirect("/details?task_id="+id);
    }
}
