SELECT io.isp_name,AVG(ABS(datediff(MINUTE,io.end_time,io.start_time))) as Average_Outage_Duration, SUM(CASE WHEN end_time IS NULL THEN 1 ELSE 0 END) AS Ongoing_Outages
FROM isp_outages io
GROUP by io.isp_name
ORDER BY Average_Outage_Duration DESC;
