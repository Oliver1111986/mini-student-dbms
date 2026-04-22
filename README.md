# mini-student-dbms
# Mini Student Database Management System

## MINI STUDENT DBMS - Learning Project Phase 0

Developer: Oliver D. Toe | Role: Project Lead & Developer
Course: Computer Science Engineering | Academic Year: 2025-2026
Life Cycle: Iterative SDLC | Architecture: MVC | Version: 1.0

DESCRIPTION: Mini Student DBMS is a beginner-level web application that manages student records through two user roles — Admin and Student. Built with Python Flask backend and MySQL database.

---

## Tech Stack

- Database: MySQL
- Backend: Python Flask
- Authentication: Flask-Login and bcrypt
- Frontend: HTML, CSS, JavaScript
- Version Control: GitHub
- Architecture: MVC (Model View Controller)

---

## User Roles

Admin can:
1. Add, edit and delete students
2. Add, edit and delete courses
3. Assign grades to students
4. View all records and reports

Student can:
1. View their own profile
2. View their enrolled courses
3. View their own grades

---

## Project Structure

- database/ — SQL schema, seed data, and backups
- backend/ — Python Flask server, routes, models, templates
- backend/models/ — database query functions
- backend/routes/ — URL route handlers
- backend/middleware/ — role and authentication checks
- backend/templates/ — HTML pages for admin and student
- backend/static/ — CSS and JavaScript files
- .env — secrets file, never uploaded to GitHub
- requirements.txt — Python packages list

---

## Database Tables

1. users — login credentials for all system users
2. students — student profile information
3. courses — all available courses
4. enrollments — which student is in which course
5. grades — grade per student per course

---

## Development Phases

- [x] Phase 0 — Planning, documentation, GitHub setup
- [ ] Phase 1 — Database schema (SQL)
- [ ] Phase 2 — Flask backend and MySQL connection
- [ ] Phase 3 — Authentication, login, sessions, roles
- [ ] Phase 4 — Core CRUD features
- [ ] Phase 5 — Security layer
- [ ] Phase 6 — Frontend dashboards
- [ ] Phase 7 — Testing
- [ ] Phase 8 — Backup system and final review

---

## Security

- Passwords hashed using bcrypt — never stored as plain text
- All protected routes use Flask-Login decorators
- Secrets stored in .env file — never committed to GitHub
- Role-based access control separates Admin and Student

---

## Git Workflow

Step 1 — git add .
Step 2 — git commit -m "clear message about what you did"
Step 3 — git push

---

This project is for learning purposes. Built phase by phase with full documentation.
