# 🚀 Flask App with MySQL – Dockerized Two-Tier Application

A simple **Flask + MySQL** web application running with **Docker**.
Users can submit messages through the frontend, and the data is stored in a MySQL database.

---

## 📌 Project Overview

This project demonstrates a **two-tier architecture**:

* **Frontend / Backend:** Flask Application
* **Database:** MySQL
* **Containerization:** Docker & Docker Compose

Perfect for learning:

* Docker basics
* Multi-container applications
* Flask database connectivity
* DevOps beginner projects

---

## 🛠️ Tech Stack

* Python Flask
* MySQL 5.7
* Docker
* Docker Compose

---

## 📂 Project Structure

```bash
.
├── app.py
├── requirements.txt
├── Dockerfile
├── docker-compose.yml
├── templates/
└── README.md
```

---

# ✅ Prerequisites

Make sure you have installed:

* Docker
* Docker Compose
* Git (optional)

---

# ⚙️ Setup Instructions

## 1️⃣ Clone Repository

```bash
git clone https://github.com/your-username/your-repo-name.git
cd your-repo-name
```

---

## 2️⃣ Create Environment File

Create a `.env` file:

```bash
touch .env
```

Add the following values:

```env
MYSQL_HOST=mysql
MYSQL_USER=root
MYSQL_PASSWORD=admin
MYSQL_DB=mydb
```

---

# 🚀 Run Using Docker Compose (Recommended)

Start all containers:

```bash
docker-compose up --build
```

---

## 🌐 Access Application

| Service  | URL                   |
| -------- | --------------------- |
| Frontend | http://localhost      |
| Backend  | http://localhost:5000 |

---

# 🗄️ Create Database Table

Run the following SQL inside MySQL:

```sql
CREATE TABLE messages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    message TEXT
);
```

---

# 💬 Application Usage

### Frontend

Visit:

```bash
http://localhost
```

* Submit messages using the form
* Messages are stored in MySQL

### Backend Endpoint

Visit:

```bash
http://localhost:5000/insert_sql
```

Used for inserting messages directly through backend route.

---

# 🧹 Stop Containers

```bash
docker-compose down
```

---

# 🐳 Run Without Docker Compose

---

## Step 1: Build Flask Image

```bash
docker build -t flaskapp .
```

---

## Step 2: Create Docker Network

```bash
docker network create twotier
```

---

## Step 3: Run MySQL Container

```bash
docker run -d \
--name mysql \
-v mysql-data:/var/lib/mysql \
--network=twotier \
-e MYSQL_DATABASE=mydb \
-e MYSQL_ROOT_PASSWORD=admin \
-p 3306:3306 \
mysql:5.7
```

---

## Step 4: Run Flask Container

```bash
docker run -d \
--name flaskapp \
--network=twotier \
-e MYSQL_HOST=mysql \
-e MYSQL_USER=root \
-e MYSQL_PASSWORD=admin \
-e MYSQL_DB=mydb \
-p 5000:5000 \
flaskapp:latest
```

---

# 🔍 Verify Running Containers

```bash
docker ps
```

---

# 📘 Useful Docker Commands

## View Logs

```bash
docker logs flaskapp
docker logs mysql
```

## Stop Containers

```bash
docker stop flaskapp mysql
```

## Remove Containers

```bash
docker rm flaskapp mysql
```

---

# 🔐 Best Practices

* Use strong database passwords
* Store secrets in `.env`
* Never commit `.env` file to GitHub
* Validate user input
* Use parameterized SQL queries
* Use volumes for persistent DB storage

---

# ⚠️ Troubleshooting

## Port Already in Use

Change ports in `docker-compose.yml`

## MySQL Connection Failed

Check:

```bash
docker logs mysql
```

## Flask App Not Loading

Check:

```bash
docker logs flaskapp
```

---

# 🎯 Learning Outcomes

After completing this project, you’ll understand:

* Docker images & containers
* Docker networking
* Multi-container architecture
* Flask + MySQL integration
* Docker Compose basics

---

# 👨‍💻 Author

Aiman Khan

---

# ⭐ Support

If you found this project helpful:

* Star the repository ⭐
* Fork it 🍴
* Share it 🚀

---
