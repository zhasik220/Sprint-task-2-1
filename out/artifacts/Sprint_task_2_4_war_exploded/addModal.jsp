<button type="button" class="btn btn-dark mb-3" data-bs-toggle="modal" data-bs-target="#addNewTask">
  + Add Task
</button>

<!-- Modal -->
<div class="modal fade" id="addNewTask" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <form action="/addTask" method="post">
    <div class="modal-dialog  modal-xl">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="exampleModalLabel">New Task</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="row mb-3">
            <div class="col-12">
              <label for="name">Name:</label>
              <input type="text" class="form-control" id="name" name="name">
            </div>
          </div>
          <div class="row mb-3">
            <div class="col-12">
              <label for="description">Description:</label>
              <textarea type="" class="form-control" id="description" rows="5" name="description"></textarea>
            </div>
          </div>
          <div class="row mb-3">
            <div class="col-12">
              <label for="deadline">Name:</label>
              <input type="date" class="form-control" id="deadline" name="deadline">
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Add</button>
        </div>
      </div>
    </div>
  </form>
</div>
