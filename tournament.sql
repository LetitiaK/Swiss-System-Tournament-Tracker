-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

CREATE TABLE players (
  id serial,
  name text,
  PRIMARY KEY (id)
);

CREATE TABLE matches (
  player1 integer REFERENCES players (id),
  player2 integer REFERENCES players (id),
  winner integer
);

CREATE VIEW matches_overview AS
SELECT id, name, count(matches.winner) as matches
FROM players
LEFT JOIN matches
ON id = player1 or id = player2
GROUP BY id
ORDER BY matches DESC;

CREATE VIEW wins_overview AS
SELECT id, name, count(*) as wins
FROM players
LEFT JOIN matches
ON (id = player1 or id = player2) and id = winner
GROUP BY id
ORDER BY wins DESC;

CREATE VIEW standings AS
SELECT matches_overview.id, matches_overview.name, wins, matches
FROM matches_overview
LEFT JOIN wins_overview
ON matches_overview.id = wins_overview.id
ORDER BY wins DESC;

CREATE VIEW ranked_standings AS
SELECT ROW_NUMBER() OVER(ORDER BY wins DESC) AS rank, id, name, wins, matches
FROM standings;
