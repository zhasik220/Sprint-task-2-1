<button type="button" class="btn btn-primary"  data-bs-toggle="modal" data-bs-target="#editTask">Edit</button>
<!-- Modal -->
<div class="modal fade" id="editTask" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">

    <div class="modal-dialog  modal-xl">
        <div class="modal-content">
            <form action="/editTask" method="post">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Edit Task</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div>
                        <input type="hidden" value="<%=task.getId()%>" name="task_id">
                    </div>
                    <div class="row mb-3">
                        <div class="col-12">
                            <label for="name">Name:</label>
                            <input type="text" class="form-control" id="name" name="name" value="<%=task.getName()%>">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-12">
                            <label for="description">Description:</label>
                            <textarea type="" class="form-control" id="description" rows="5" name="description"><%=task.getDescription()%></textarea>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-12">
                            <label for="description">Deadline:</label>
                            <input type="date" class="form-control" value="<%=task.getDateToInputValue()%>" name="deadline">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-12"><label class="form-label">Done:</label>
                            <select class="form-select" name="done">
                                <option value="No">No</option>
                                <option value="Yes" <%=task.getDone()?"selected":""%>>Yes</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Back</button>
                    <button type="submit" class="btn btn-success">Save</button>
                </div>
            </form>
        </div>
    </div>

</div>

