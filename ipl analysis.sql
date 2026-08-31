create database ipl;
use ipl;
select * from matches;
select * from deliveries;


-- 1. Which teams have won the most IPL matches?
select
	winner,
    count(*) total_wins
from 
	matches
where 
	winner is not null
group by
	winner
order by
	total_wins desc;
    
-- 2. Which players have won the most "Player of the Match" awards?
 select
	player_of_match,
    count(*) award
 from 
	matches
where
	player_of_match is not null
group by
	player_of_match
order by
	award desc
limit 10;

-- 3. Top 10 Highest Run Scorers
select
	batter,
    sum(batsman_runs) total_runs
from 
	deliveries
group by
	batter
order by
	total_runs desc
limit 10;

-- 4. Top 10 Wicket Takers
select
	bowler,
    count(*) wicket
from 
	deliveries
where
	player_dismissed is not null
group by 
	bowler
order by 
	wicket desc
limit 10;

-- 5. Which venues host the most IPL matches?
select
	venue,
    count(*) match_played
from 
	matches
group by
	venue
order by 
	match_played desc;
    
-- 6. Does Winning the Toss Increase the Chance of Winning?
select
	case
		when toss_winner = winner then 'win_match'
        else 'lost_match'
	end as toss_impact,
    count(*) total_matches
from 
	matches
group by
	toss_impact;
    
-- 7. Top 10 Highest Team Scores
select
	match_id,
    inning,
    batting_team,
    sum(total_runs) total_score
from 
	deliveries
group by 
	match_id,
    inning,
    batting_team
order by 
	total_score desc
limit 10;

-- 8. Which Batters Hit the Most Sixes?
select
	batter,
    count(*) total_sixes
from 
	deliveries
where
	batsman_runs = 6
group by
	batter
order by
	total_sixes desc
limit 10;

-- 9. Season-wise Champions

select 
	season,
    winner
from 
	matches
where 
	match_type = 'Final'
order by 
	season;
    
-- 10. Rank Players by Total Runs
with batter_runs as (
select 
	batter,
    sum(batsman_runs) total_runs 
from 
	deliveries
group by
	batter
)
select
	rank() over (order by total_runs desc) player_rank,
	batter,
    total_runs
from
	batter_runs;
    
-- 11. Which Batters Have a Strike Rate Above 140? (Minimum 500 Balls)
select 
	batter,
    sum(batsman_runs) total_runs,
    count(ball) ball_played,
    round((sum(batsman_runs) / count(ball)) * 100,2) strike_rate
from 
	deliveries
group by 
	batter
having
	ball_played > 500 and strike_rate > 140
order by 
	strike_rate desc
limit 10;

-- 12. Top 10 Economical Bowlers (Minimum 500 Balls)
select
	bowler,
    sum(total_runs) runs_given,
    count(ball) ball_bolwed,
    round((sum(total_runs) / count(ball)) * 6,2) bowler_economy
from 
	deliveries
group by 
	bowler
having 
	ball_bolwed >= 500
order by 
	bowler_economy 
limit 10;

-- 
    
