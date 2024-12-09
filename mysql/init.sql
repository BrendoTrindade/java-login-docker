-- Create database
CREATE DATABASE IF NOT EXISTS logindb;
USE logindb;

-- Create user and grant privileges
CREATE USER IF NOT EXISTS 'loginuser'@'%' IDENTIFIED BY 'loginpass';
GRANT ALL PRIVILEGES ON logindb.* TO 'loginuser'@'%';
FLUSH PRIVILEGES;

-- Create tables
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS Employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    uname VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100)
);

-- Insert test data
INSERT INTO users (username, password, email) 
VALUES ('testuser', 'test123', 'test@example.com')
ON DUPLICATE KEY UPDATE password=password;

INSERT INTO Employee (uname, password, email) 
VALUES ('employee1', 'emp123', 'employee@example.com')
ON DUPLICATE KEY UPDATE password=password;
