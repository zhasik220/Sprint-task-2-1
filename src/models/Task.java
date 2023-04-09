package models;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Task {
    private Long id;
    private String name;
    private String description;
    private String deadlineDate;
    private Boolean isDone=false; //При создании обьекта класса Task паременная isDone будет false по умолчнаии
    public Task() {
    }

    public Task(Long id, String name, String description, String deadlineDate) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.deadlineDate = deadlineDate;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {this.description = description;}

    public String getDeadlineDate() {
        return deadlineDate;
    }

    public void setDeadlineDate(String deadlineDate) {
        SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat format2 = new SimpleDateFormat("dd.MM.yyyy");
        Date date = null;
        try {
            date = format1.parse(deadlineDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        deadlineDate = format2.format(date);
        this.deadlineDate = deadlineDate;
    }

    public Boolean getDone() {
        return isDone;
    }

    public void setDone(Boolean done) {
        isDone = done;
    }

    public String getDoneYesOrNo(){
        if (isDone){
            return "Yes";
        }
        else {
            return "No";
        }
    }
    public String getDateToInputValue(){
        SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat format2 = new SimpleDateFormat("dd.MM.yyyy");
        Date date = null;
        try {
            date = format2.parse(deadlineDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        String dateInputValue = format1.format(date);
        return dateInputValue;
    }
}
