SELECT *
FROM
  yoda
WHERE
    LOWER({{ textInput2.value }}) = LOWER(first_name)
    OR LOWER({{ textInput3.value }}) = LOWER(last_name)
    OR LOWER({{ textInput5.value }}) = LOWER(ssn)
    OR LOWER({{ textInput4.value }}) = LOWER(retire_system)
  OR
    {{ textInput1.value }} = person_id