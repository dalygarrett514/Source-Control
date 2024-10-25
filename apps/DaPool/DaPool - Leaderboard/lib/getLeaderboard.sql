SELECT
  dp.*,
  RANK() OVER (
    ORDER BY
      dp.points DESC
  ) AS RANK
FROM
  dapool_users dp
ORDER BY
  dp.points DESC;