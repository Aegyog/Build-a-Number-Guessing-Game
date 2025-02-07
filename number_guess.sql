-- Create the database (if not already created)
CREATE DATABASE number_guess;

-- Switch to the number_guess database (if not already selected)
\c number_guess;

-- Create the users table to track each user's statistics
CREATE TABLE users (
    username VARCHAR(50) PRIMARY KEY,
    games_played INT DEFAULT 0,
    best_game INT DEFAULT NULL
);

-- Create the games table to record results of each game
CREATE TABLE games (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50),
    secret_number INT,
    guesses INT,
    FOREIGN KEY (username) REFERENCES users(username)
);

-- Example of inserting a new user (you can remove this part as your script will insert automatically)
-- INSERT INTO users (username) VALUES ('john_doe');

-- Example of inserting a new game (you can remove this part as your script will insert automatically)
-- INSERT INTO games (username, secret_number, guesses) VALUES ('john_doe', 42, 5);
