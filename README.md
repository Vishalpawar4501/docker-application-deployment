# Containerized Python Flask Application with Docker

A lightweight, containerized Python Flask web application built and orchestrated using **Docker** and **Docker Compose** for consistent local development and deployment.

## Project Structure

```text
docker-application-deployment/
├── app/
│   └── app.py              # Main Flask application
├── images/                 # Screenshots and architecture diagrams
├── .dockerignore           # Files excluded from Docker build context
├── .gitignore              # Files excluded from Git
├── Dockerfile              # Instructions to build the Docker image
├── docker-compose.yml      # Multi-container orchestration config
├── requirements.txt        # Python dependencies
└── README.md               # Project documentation
```

## Prerequisites

Make sure you have the following installed on your system:
* [Docker Desktop](https://www.docker.com/products/docker-desktop/)
* [Git](https://git-scm.com/)

## Getting Started (Local Setup)

### 1. Clone the Repository
```bash
git clone [https://github.com/](https://github.com/)<your-username>/docker-application-deployment.git
cd docker-application-deployment
```

### 2. Build and Run with Docker Compose
Run the following command to build the image and start the container:
```bash
docker-compose up --build
```
*(Optional: Add `-d` flag to run the container in detached/background mode: `docker-compose up --build -d`)*

### 3. Access the Application
Open your browser and navigate to:
```text
http://localhost:5000
```

## Useful Docker Commands

* **Check running containers:**
  ```bash
  docker ps
  ```
* **View container logs:**
  ```bash
  docker-compose logs -f
  ```
* **Stop and remove containers:**
  ```bash
  docker-compose down
  ```

## Key Features & Best Practices Implemented
* **Optimized Build Context:** Configured `.dockerignore` to exclude local virtual environments (`venv/`), cache files, and documentation from the container image.
* **Reproducible Environment:** Isolated application dependencies using `requirements.txt` inside a Linux container.
* **Simplified Orchestration:** Managed port mapping, build configuration, and container lifecycle via `docker-compose.yml`.

## Screenshots
![App Running](images/screenshot.png)
