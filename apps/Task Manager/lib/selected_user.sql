SELECT
  *
FROM
  tasks
WHERE
  engineer_assigned = {{select3.selectedLabel}}