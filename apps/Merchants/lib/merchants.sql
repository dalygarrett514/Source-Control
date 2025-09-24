SELECT * FROM (
    SELECT * FROM demo_merchants_250
    WHERE CRM = 'MXA' AND Processor = 'TSYS'
    ORDER BY RANDOM()
    LIMIT 25
) AS mxa_tsys

UNION ALL

SELECT * FROM (
    SELECT * FROM demo_merchants_250
    WHERE CRM = 'MXA' AND Processor = 'FD'
    ORDER BY RANDOM()
    LIMIT 25
) AS mxa_fd

UNION ALL

SELECT * FROM (
    SELECT * FROM demo_merchants_250
    WHERE CRM = 'Vimas' AND Processor = 'TSYS'
    ORDER BY RANDOM()
    LIMIT 30
) AS vimas_tsys

UNION ALL

SELECT * FROM (
    SELECT * FROM demo_merchants_250
    WHERE CRM = 'MXC' AND Processor = 'TSYS'
    ORDER BY RANDOM()
    LIMIT 25
) AS mxc_tsys

UNION ALL

SELECT * FROM (
    SELECT * FROM demo_merchants_250
    WHERE CRM = 'MXC' AND Processor = 'FD-North'
    ORDER BY RANDOM()
    LIMIT 10
) AS mxc_fd_north

UNION ALL

SELECT * FROM (
    SELECT * FROM demo_merchants_250
    WHERE CRM = 'MXC' AND Processor = 'FD-Omaha'
    ORDER BY RANDOM()
    LIMIT 25
) AS mxc_fd_omaha;