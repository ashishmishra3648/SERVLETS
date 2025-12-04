-- PostgreSQL Database Setup Script for servletsdemo project
-- Database: school
-- Table: student1

-- Create the database (if it doesn't exist)
-- Run this command in PostgreSQL:
-- CREATE DATABASE school;

-- Connect to the school database and run the following:

-- Drop table if exists (optional - only if you want to recreate)
DROP TABLE IF EXISTS student1;

-- Create the student1 table
CREATE TABLE student1 (
    id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INTEGER NOT NULL,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(50) NOT NULL
);

-- Verify table creation
SELECT * FROM student1;

-- Sample insert (optional - for testing)
-- INSERT INTO student1 (id, name, age, username, password) VALUES (1, 'John Doe', 20, 'john', '123');
