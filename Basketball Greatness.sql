SELECT  *, DENSE_RANK() over(ORDER by pt.points desc) as ranking FROM player_totals pt
order by 3 asc, 1 desc 
