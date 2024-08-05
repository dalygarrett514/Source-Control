SELECT
  generate_series (
    1,
    (
      SELECT
        COUNT(*)
      FROM
        dapool_lines
    )
  ) AS record_numbers;