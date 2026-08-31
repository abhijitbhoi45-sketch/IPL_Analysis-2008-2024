# 🏏 IPL Analysis 2008–2024

## 📌 Project Overview

This project performs an end-to-end data analysis of the Indian Premier League (IPL) from 2008 to 2024.

The objective of this project is to analyze match results, team performance, player contributions, toss decisions, scoring patterns, and tournament trends using data analytics techniques.

The project follows a complete data analytics workflow:

- 🐍 Python & Pandas – Data Cleaning, Preprocessing and EDA
- 🗄️ MySQL – SQL-based Data Analysis
- 📊 Power BI – Interactive Dashboard and Visualization
- 📓 Jupyter Notebook – Analysis and Documentation

The analysis provides insights into team performance, player statistics, toss impact, scoring trends, and IPL tournament patterns.

---

## 🎯 Project Objectives

The main objectives of this project are:

- Analyze IPL matches from 2008 to 2024.
- Identify the most successful IPL teams.
- Analyze top run-scoring batsmen.
- Identify the leading wicket-taking bowlers.
- Analyze Player of the Match awards.
- Study toss decisions and their impact on match outcomes.
- Analyze season-wise matches and tournament trends.
- Identify season-wise champions.
- Analyze the highest team scores.
- Identify batters with the most sixes.
- Analyze high strike-rate batters.
- Identify economical bowlers.
- Build an interactive Power BI dashboard for IPL analysis.

---

## 📂 Datasets

The project uses multiple IPL datasets.

### 1. Players Dataset

Contains information related to IPL players, including:

- Player name
- Batting style
- Bowling style
- Playing position
- Fielding role
- Player images

### 2. Matches Dataset

Contains match-level information from 2008 to 2024, including:

- Match ID
- Season
- Date
- City
- Venue
- Teams
- Toss winner
- Toss decision
- Match winner
- Result
- Result margin
- Player of the Match

### 3. Teams Dataset

Contains information about IPL teams, including:

- Team ID
- Team name
- Short name
- Team logo

### 4. Deliveries Dataset

Contains ball-by-ball IPL data, including:

- Match ID
- Innings
- Over
- Batter
- Bowler
- Runs
- Batsman runs
- Extras
- Dismissals

The deliveries dataset contains millions of records and therefore requires more processing compared to the match-level datasets.

---

## 🔍 Exploratory Data Analysis

Python and Pandas were used for exploratory data analysis.

### Dataset Inspection

The datasets were inspected using:

- `head()`
- `shape`
- `info()`

This helped understand:

- Number of records
- Number of columns
- Column names
- Data types
- Missing values

### Missing Value Analysis

Missing values were analyzed using:
python
df.isnull().sum()

Missing values were identified in columns such as:

City
Method
Player of Match
Winner
Result Margin
Target Runs
Target Overs

Appropriate preprocessing techniques were applied to make the data suitable for analysis.


Duplicate Analysis

Duplicate records were checked using:
df.duplicated().sum()

 
 ### Team Name Standardization

Different names representing the same team were standardized.

Examples: 

Old Name	                  | Standardized Name
Royal Challengers Bangalore	| Royal Challengers Bengaluru
Delhi Daredevils	          | Delhi Capitals
Kings XI Punjab	            | Punjab Kings
Rising Pune Supergiants     |	Rising Pune Supergiant


📊 Key Analyses Performed
🏆 Team Performance

Analyzed the total number of matches won by each IPL team to understand historical team performance.

🏏 Top Run Scorers

Calculated total runs scored by each batter using:

SUM(batsman_runs)

The Top 10 run scorers were identified.

🎯 Top Wicket Takers

Analyzed player dismissals to identify the Top 10 wicket-taking bowlers.

Run-out dismissals were excluded from the bowler wicket calculation.

🪙 Toss Analysis

Analyzed:

Toss winner
Toss decision
Match winner

This was used to understand the relationship between winning the toss and winning the match.

🏟️ Venue Analysis

Analyzed the number of IPL matches played at different venues.

💥 Sixes Analysis

Ball-by-ball data was filtered where:

batsman_runs = 6

This was used to identify batters with the most sixes.

📈 Highest Team Scores

Calculated total scores for teams in individual innings to identify high-scoring performances.

🏅 Season Champions

Analyzed the season-wise winning teams to identify IPL champions across seasons.

⭐ Player of the Match

Analyzed Player of the Match awards to identify players who received the most awards.

📊 Strike Rate Analysis

Analyzed total runs and balls played to identify high strike-rate batters.

🎯 Bowling Economy

Calculated runs conceded by bowlers to identify economical bowlers.

### ⚙️ Feature Engineering

Several new features were created during preprocessing.

1. Date-Based Features

The original date column was converted into datetime format.

The following features were created:

Year
Month
Day

2. Weekend Match

A weekend_match feature was created.

True  → Saturday or Sunday
False → Weekday

3. Toss Match Winner

A toss_match_winner feature was created by comparing:

toss_winner

with:

winner

If both teams were the same:

True

Otherwise:

False

4. Match Winning Type

A win_type feature was created based on the match result.

Bat First
Chase

5. Total Boundaries

A total_boundaries feature was created using the deliveries dataset.

Deliveries resulting in:

4 runs
6 runs

were filtered and counted for each match.

The result was then mapped to the matches dataset using:

match_id

and

id

### 🗄️ SQL Analysis

MySQL was used to perform structured data analysis.

The following questions were analyzed using SQL:

- Most successful IPL teams
- Player of the Match analysis
- Top 10 run scorers
- Top 10 wicket takers
- Venue-wise match analysis
- Toss impact analysis
- Highest team scores
- Most sixes by batters
- Season-wise champions
- Player ranking based on total runs
- High strike-rate batters
- Most economical bowlers

SQL concepts used include:

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- Aggregate Functions
- Filtering
- Sorting
- Joins
- CTE (Common Table Expression)
- LIMIT
  
### 📊 Power BI Dashboard

An interactive Power BI dashboard was created to visualize IPL statistics.

Dashboard Features
📌 KPI Cards
📅 Season-wise filtering
🏆 Orange Cap analysis
🎯 Purple Cap analysis
🏏 Team Points Table
💥 Player-wise fours and sixes
👤 Player images
🏟️ Team logos
📈 Season-wise performance analysis
🔎 Interactive slicers and visualizations

The dashboard allows users to explore IPL statistics across different seasons.


### 🛠️ Technologies Used

Technology	      | Purpose
Python	          | Data preprocessing and analysis
Pandas	          | Data manipulation and cleaning
NumPy	            | Numerical operations
Matplotlib	      | Data visualization
MySQL	            | SQL-based data analysis
Power BI	        | Interactive dashboard
Jupyter Notebook	| Python analysis environment

### 📁 Project Structure

IPL-Analysis-2008-2024/
│
├── 📂 Dataset/
│   ├── matches.csv
│   ├── deliveries.csv
│   ├── players.csv
│   └── teams.csv
│
├── 📂 Python/
│   └── IPL_Analysis.ipynb
│
├── 📂 SQL/
│   └── IPL_Analysis.sql
│
├── 📂 PowerBI/
│   └── IPL_Analysis_Dashboard.pbix
│
├── 📂 Images/
│   ├── dashboard.png
│   ├── team_analysis.png
│   └── player_analysis.png
│
├── 📄 IPL Analysis 2008-2024 Report.pdf
│
└── 📄 README.md




💡 Key Insights

The analysis highlighted several important IPL trends:

- Mumbai Indians and Chennai Super Kings have been among the most dominant teams historically.
- Toss decisions have an observable relationship with match outcomes.
- Aggressive batting has become increasingly important in modern IPL seasons.
- Star players have played a significant role in shaping match outcomes.
- Ball-by-ball data provides detailed insights into player and team performance.
- High-scoring matches and close finishes are important aspects of fan engagement.

📌 Business & Sports Recommendations

Based on the analysis:

Team Strategy

- Teams can study toss decisions and match conditions to improve strategic decision-making.

Player Retention

- Consistent performers can be identified through historical performance analysis.

Fan Engagement

- Popular rivalries and high-performing players can be highlighted in fan engagement campaigns.

Performance Analytics

- Ball-by-ball data can be used to identify clutch performances and important match situations.

Tournament Growth

- High-scoring matches and close finishes can be promoted to increase audience engagement.



