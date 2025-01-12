SELECT actions, COUNT(actions) as count_actions, rank() over(ORDER by COUNT(actions )desc) as rank FROM facebook
GROUP BY actions, dates
HAVING dates = '2023-12-25'
