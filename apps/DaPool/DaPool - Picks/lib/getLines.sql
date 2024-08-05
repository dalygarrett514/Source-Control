SELECT 
    dl.*, 
    dp.pick, 
    dp.rank
FROM 
    dapool_lines dl
LEFT JOIN 
    dapool_picks dp
ON 
    dl.game_id = dp.game_id
AND 
    dp.user_id = {{ current_user.id }}
ORDER BY 
    dl.game_id;
