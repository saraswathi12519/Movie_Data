-- create database
CREATE DATABASE Streamflix_db;

-- use database
USE Steamflix_db;

-- create Movies table
CREATE TABLE Movies (
MovieID INT PRIMARY KEY,
Title VARCHAR(500),
Genres VARCHAR(200),
Language VARCHAR(20),
Country VARCHAR(10),
TotalViews INT);

-- create Users table
CREATE TABLE Users(
UserID INT PRIMARY KEY,
Age INT,
Gender CHAR(1),
Country VARCHAR(10),
SubscriptionStatus VARCHAR(20),
TotalWatchTime INT,
Device VARCHAR(50));

-- create Ratings table
CREATE TABLE Ratings(
RatingID INT PRIMARY KEY,
UserID VARCHAR(50),
MovieID INT,
Rating DECIMAL(2,1),
Timestamp DATETIME, 
FOREIGN KEY (UserID) REFERENCES Users(UserID),
FOREIGN KEY (MovieID) REFERENCES Movies(MovieID));