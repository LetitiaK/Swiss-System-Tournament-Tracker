# Swiss System Tournament Tracker

This Python module uses the PostgreSQL database to keep track of players and matches in a game tournament.

The game tournament uses the Swiss system for pairing up players in each round, i.e. players are not eliminated, and each player is paired with another player with the same number of wins, or as close as possible.

## Content

* **tournament.py:** This file contains the python source
* **tournament.sql:** This file contains the database schema and the created views
* **tournamen_test.py:** This file contains unit tests to test tournament.py. This file was provided by [udacity](www.udacity.com).

## Getting started

*Please note: This code requires a working Python installation as well as a working PostgreSQL installation. The Python version used for this project is 2.7.12, which can be found [here](https://www.python.org/downloads/) and the PostgreSQL version used for this project is 9.5.9, which can be found [here](https://www.postgresql.org/download/).*

1. Download all files and save them within the same folder
2. Create a database with `CREATE DATABASE tournament`
3. Connect to database with `psql -d tournament`
3. Load the database schema and the views with `psql \i tournament.sql`
5. Chose one of the two possibilities described below to run the code

### Command line

1. Open a terminal
2. Change the directory (using cd) to access the folder, in which you saved the files
3. Type `python tournament.py`

### Python IDLE (Python GUI)

1. Open Python IDLE (it is automatically installed with the Python installation)
2. Open the file tournament.py
3. Run the code by pressing F5
