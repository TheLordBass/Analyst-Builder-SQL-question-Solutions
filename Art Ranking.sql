SELECT artist_id, sum(score) as total_score, rank() over(order by sum(score) desc) as ranking 
FROM rankings 
GROUP by artist_id
order by ranking,1 asc
