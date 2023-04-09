package servlets;

import db.DBManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Task;

import java.io.IOException;

@WebServlet(value = "/addTask")
public class AddTask extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name=request.getParameter("name");
        String description=request.getParameter("description");
        String deadLine=request.getParameter("deadline");
        Task task=new Task();
        task.setName(name);
        task.setDescription(description);
        task.setDeadlineDate(deadLine);
        DBManager.addTask(task);
        response.sendRedirect("/");

    }
}
