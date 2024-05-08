SELECT
  *
FROM
  tasks
WHERE
  engineer_assigned IS NULL
  OR engineer_assigned = ''