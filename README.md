#  Group 6 Techcrush Two Tier Web App With Docker Running On Azure Vm

This project is a full-stack web application built with:

- Frontend: Vite + React
- Backend: Express.js (Node.js)
- Containerization: Docker 
- Web Server / Reverse Proxy: NGINX


## 🔍 Project Overview

The frontend query the backend for a get request 
which can be seen here:

# const fetchMessage = async () => {
#     try {
#       // Make an asynchronous request to the backend
#       const response = await fetch(backendUrl);


## 📁 Project Structure


# Project1/
# ├── Backend/
# │ ├── backend.js
# │ ├── Dockerfile
# │ └── package.json/
# │ 
# ├── Frontend/ 
# │ ├── Dockerfile
# │ ├── vite.config.js
# │ └── dist/
# │
# ├── default.conf
# ├── docker-compose.yml
# └── README.md 

---

## ⚙️ How to Run the Project

### 1. Clone the Repository

git clone https://github.com/DELONE-de/Project1.git
cd The-repo
### 2. pull the docker images

docker compose pull compose.yaml

### 3. Start All Services with Docker Compose

docker-compose up --build
---

## 🌐 Access the App

| Component   | URL                                 |
| ----------- | ----------------------------------- |
| Frontend    | http://localhost:80                 |
| Backend API | http://localhost/:5000              | 

---

## 🐳 Docker Compose Services

- frontend: Builds and bundles the Vite app
- backend: Runs Express server on port 5000
- nginx: Serves frontend and proxies

---
## 📦 Technologies Used

- React + Vite
- Express.js
- Docker & Docker Compose
- NGINX 
- Node.js

---

## ✍️ Author

Ibiyemi Adeoluwa
Capstone Project - Group 6 (Tech Crush)
Class of 2025

---

## ✅ TODO LIST

Tasks:

1. Create DockerFiles for both backend and Frontend
2. Containerize both using Docker with separate Dockerfiles.
3. Create a docker-compose.yml file to run both services together.
4. Push both images to Docker Hub using tagged versions.
5. Creates a Linux VM and deploys the containers into it and expose for external consumption.  
   BONUS: Implement a GitHub Actions CI/CD pipeline that:

- Builds the images
- Pushes them to Docker Hub
- SSHs into a Linux VM and deploys the containers
