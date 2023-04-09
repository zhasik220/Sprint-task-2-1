package db;

import models.Task;

import java.util.ArrayList;

public class DBManager {
    static ArrayList<Task> tasks=new ArrayList<Task>();
    static Long aLong=1L;
    static {
        Task task1=new Task();
        task1.setName("Create Website use Java EE");
        task1.setDescription("I will need to create my own Java EE application for myself. First, I will install" +
                " Composer on my computer. Then I will stupidly download Java EE and run it.");
        task1.setDeadlineDate("2022-12-21");
        task1.setDone(true);
        addTask(task1);


        Task task2=new Task();
        task2.setName("Build a mobile app using React Native");
        task2.setDescription("You will need to build a mobile app using React Native. The app should have basic" +
                " functionality, such as a login screen, a home screen, and a profile page. You will also need to " +
                "integrate with an external API to fetch data for the app.");
        task2.setDeadlineDate("2023-03-18");
        task2.setDone(true);
        addTask(task2);


        Task task3=new Task();
        task3.setName("Write a web scraper using Python Beautiful Soup");
        task3.setDescription("You will need to write a web scraper using Python and the Beautiful Soup library. " +
                "The scraper should extract data from a website and store it in a CSV file. You will also need to " +
                "handle errors and exceptions that may occur during the scraping process.");
        task3.setDeadlineDate("2023-04-16");
        addTask(task3);

        Task task4=new Task();
        task4.setName("Create a data visualization using D3.js");
        task4.setDescription("You will need to create a data visualization using D3.js. The visualization should be" +
                "interactive and allow users to explore and manipulate the data. You will also need to ensure that" +
                " the visualization is responsive and works well on different devices.");
        task4.setDeadlineDate("2023-06-01");
        addTask(task4);

        Task task5=new Task();
        task5.setName("Develop a REST API using Python Flask");
        task5.setDescription("You will need to create a data visualization using D3.js. The visualization should be" +
                " interactive and allow users to explore and manipulate the data. You will also need to ensure that " +
                "the visualization is responsive and works well on different devices.");
        task5.setDeadlineDate("2023-05-11");
        addTask(task5);
    }


    static public ArrayList<Task> getAllTasks() {
        return tasks;
    }

    static public void addTask(Task task){
        task.setId(aLong++);
        tasks.add(task);
    }

    static public Task getTask(Long id){
        Task needTask=tasks.stream().filter(task -> task.getId()==id).findAny().orElse(null);
        return needTask;
    }
    static public void deleteTask(Long id){
        for (Task task : tasks) {
            if (task.getId()==id){
                tasks.remove(task);
                break;
            }
        }
    }
    static public void updateTask(Task newTask){
        for (int i = 0; i < tasks.size(); i++) {
            if (tasks.get(i).getId()==newTask.getId()){
                tasks.set(i,newTask);
                break;
            }
        }
    }
}
