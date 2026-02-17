# 📘 SQL Part 1 – Instagram Database (Lecture Practice)

This repository contains the SQL code I wrote during my lecture to practice basic **SQL database concepts**.  
The project simulates a simple **Instagram-like database system** with users and posts.

---

## 📂 Database Name
`instagram`

---

## 🛠️ Concepts Covered
- Creating a database
- Creating tables
- Primary Key & Foreign Key
- NOT NULL & UNIQUE constraints
- CHECK constraint
- DEFAULT values
- Inserting records into tables
- Using `SELECT DISTINCT`

---

## 🧱 Tables Structure

### 1️⃣ User Table
Stores information about users.

| Column     | Data Type     | Description |
|------------|---------------|-------------|
| id         | INT           | Primary Key |
| age        | INT           | Must be ≥ 13 |
| name       | VARCHAR(30)   | Cannot be NULL |
| email      | VARCHAR(50)   | Must be unique |
| followers  | INT           | Default = 0 |
| following  | INT           | Number of users followed |

**Constraints Used:**
- `PRIMARY KEY (id)`
- `UNIQUE (email)`
- `CHECK (age >= 13)`
- `DEFAULT followers = 0`

---

### 2️⃣ Post Table
Stores posts created by users.

| Column   | Data Type   | Description |
|----------|-------------|-------------|
| id       | INT         | Primary Key |
| content  | VARCHAR(50) | Post text |
| user_id  | INT         | Foreign Key referencing user(id) |

**Relationship:**
- One user can have many posts (Foreign Key relationship).

---

## 📥 Data Inserted
Sample users are inserted into the `user` table with:
- id
- age
- name
- email
- followers
- following

Example:
```sql
INSERT INTO user 
(id,age,name,email,followers,following)
VALUES
(1,14,"adam","adam@gmail.com",123,145),
(2,15,"adams","adams@gmail.com",124,125),
(3,16,"adamss","adamss@gmail.com",125,144),
(4,17,"adamsss","adamssss@gmail.com",126,145);

🔍 Query Used
SELECT DISTINCT age FROM user;

This query returns unique ages from the user table without repetition.

🎯 Purpose of This Project
This project was created for:


Lecture practice


Understanding SQL basics


Learning table relationships


Practicing constraints and queries



🚀 How to Run


Open MySQL / MariaDB / any SQL editor


Copy the SQL file code


Execute it step by step


Run queries to view the data



🧑‍🎓 Author
Muhammad Aazmeer
(SQL Lecture Practice – Part 1)

📌 Note
This is a beginner-level SQL project created for learning and practice purposes only.
