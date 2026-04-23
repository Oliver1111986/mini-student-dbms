-- ================================================
-- Mini Student DBMS
-- Database Schema
-- Author: Oliver
-- Phase 1
-- ================================================

-- Create and select the database
CREATE DATABASE IF NOT EXISTS student_dbms;
USE student_dbms;

-- ------------------------------------------------
-- TABLE 1: users
-- Stores login credentials for all system users
-- ------------------------------------------------
CREATE TABLE IF NOT EXISTS users (
    id            INT AUTO_INCREMENT PRIMARY KEY,
    username      VARCHAR(50) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    role          ENUM('admin', 'student') NOT NULL,
    created_at    DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- ------------------------------------------------
-- TABLE 2: students
-- Stores student profile information
-- ------------------------------------------------
CREATE TABLE IF NOT EXISTS students (
    id            INT AUTO_INCREMENT PRIMARY KEY,
    user_id       INT NOT NULL UNIQUE,
    full_name     VARCHAR(100) NOT NULL,
    email         VARCHAR(100) NOT NULL UNIQUE,
    phone         VARCHAR(20),
    year          VARCHAR(20) NOT NULL,
    created_at    DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- ------------------------------------------------
-- TABLE 3: courses
-- Stores all available courses
-- ------------------------------------------------
CREATE TABLE IF NOT EXISTS courses (
    id            INT AUTO_INCREMENT PRIMARY KEY,
    course_code   VARCHAR(20) NOT NULL UNIQUE,
    course_name   VARCHAR(100) NOT NULL,
    description   TEXT,
    created_at    DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- ------------------------------------------------
-- TABLE 4: enrollments
-- Tracks which student is enrolled in which course
-- ------------------------------------------------
CREATE TABLE IF NOT EXISTS enrollments (
    id            INT AUTO_INCREMENT PRIMARY KEY,
    student_id    INT NOT NULL,
    course_id     INT NOT NULL,
    enrolled_date DATE DEFAULT (CURRENT_DATE),
    FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES courses(id) ON DELETE CASCADE,
    UNIQUE KEY unique_enrollment (student_id, course_id)
);

-- ------------------------------------------------
-- TABLE 5: grades
-- Stores grade per student per course
-- ------------------------------------------------
CREATE TABLE IF NOT EXISTS grades (
    id            INT AUTO_INCREMENT PRIMARY KEY,
    student_id    INT NOT NULL,
    course_id     INT NOT NULL,
    grade         VARCHAR(5) NOT NULL,
    recorded_date DATE DEFAULT (CURRENT_DATE),
    recorded_by   INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES courses(id) ON DELETE CASCADE,
    FOREIGN KEY (recorded_by) REFERENCES users(id)
);