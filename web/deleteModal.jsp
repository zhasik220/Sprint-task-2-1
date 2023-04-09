<button type="button" class="btn btn-danger"  data-bs-toggle="modal" data-bs-target="#deleteTask">Delete</button>
<!-- Modal -->
<div class="modal fade" id="deleteTask" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">

        <div class="modal-dialog  modal-lg">
            <div class="modal-content">
                <form action="/deleteTask" method="post">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Delete Task</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="hidden" value="<%=task.getId()%>" name="task_id">
                    <h3>Are you sure?</h3>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                    <button type="submit" class="btn btn-danger">Yes</button>
                </div>
                </form>
            </div>
        </div>

</div>
