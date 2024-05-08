UPDATE
  tasks
SET
  engineer_assigned = {{select1.value}}
WHERE
  task_id = {{table1.selectedRow.task_id}}