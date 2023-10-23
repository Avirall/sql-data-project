#### 1. Create DB, permissions etc.
Write a SQL script that creates a new user, and database. Make the user the owner of the db.

- createuser --interactive
- enter name and press y
- createdb aviral 
- sudo -u aviral psql
- \conninfo

#### 2. Clean up script
Write another SQL script that cleans up the user, and database created in the previous step.

DROP DATABASE IF EXISTS aviral;

DROP USER IF EXISTS aviral

#### 3. Load CSV
Write a SQL script that loads CSV data into a table.

- step to create deliveries table
  - CREATE TABLE deliveries (
    match_id INT,
    inning INT,
    batting_team VARCHAR(255),
    bowling_team VARCHAR(255),
    over DECIMAL(5,2),
    ball INT,
    batsman VARCHAR(255),
    non_striker VARCHAR(255),
    bowler VARCHAR(255),
    is_super_over BOOLEAN,
    wide_runs INT,
    bye_runs INT,
    legbye_runs INT,
    noball_runs INT,
    penalty_runs INT,
    batsman_runs INT,
    extra_runs INT,
    total_runs INT,
    player_dismissed VARCHAR(255),
    dismissal_kind VARCHAR(255),
    fielder VARCHAR(255)
);

- steps to create matches table
    - CREATE TABLE cricket_matches (
    id serial PRIMARY KEY,
    season integer,
    city text,
    date date,
    team1 text,
    team2 text,
    toss_winner text,
    toss_decision text,
    result text,
    dl_applied boolean,
    winner text,
    win_by_runs integer,
    win_by_wickets integer,
    player_of_match text,
    venue text,
    umpire1 text,
    umpire2 text,
    umpire3 text
);
- step to create umpires table
    - CREATE TABLE umpires (
    umpire text,
    country text
);


- \copy deliveries FROM '/home/aviral/Desktop/IPL DataSet Analytics/archive/deliveries.csv' DELIMITER ',' CSV HEADER;
- \copy matches FROM '/home/aviral/Desktop/IPL DataSet Analytics/archive/matches.csv' DELIMITER ',' CSV HEADER;
- \copy umpires FROM '/home/aviral/Desktop/IPL DataSet Analytics/archive/umpires.csv' DELIMITER ',' CSV HEADER;
