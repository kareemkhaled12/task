# 📦 Go Docker Assignment

A simple Go (Golang) web application built and containerized with Docker.
Submitted for the Distributed Systems course.

---

## 🔗 Submission Link (Docker Hub)

Here is the public Docker Hub image URL as required for the assignment:

[https://hub.docker.com/r/kreemkhaled/go-app](https://hub.docker.com/r/kreemkhaled/go-app)

---

## ⚡️ Quick Start: Running the App

Follow these steps to run the container directly from Docker Hub.

1. Pull the Docker Image:
```bash
docker pull kreemkhaled/go-app

2. Run the Container:
docker run -d -p 8080:8080 --name go-web-app kreemkhaled/go-app

(Using -d to run it in detached mode).
3. View the App:
Open your browser to http://localhost:8080.
4. (Optional) Stop and Remove the Container:
docker stop go-web-app
docker rm go-web-app

🛠 Building from the Source Code
If you wish to build the image locally instead of pulling from Docker Hub.
1. Clone the GitHub Repository:
git clone [https://github.com/kareemkhaled12/task.git](https://github.com/kareemkhaled12/task.git)
cd task

2. Build the image using the Dockerfile:
docker build -t local-go-app .

3. Run the locally-built image:
docker run -d -p 8080:8080 --name local-go-web-app local-go-app

...and check http://localhost:8080.
👤 Author Info
 * Kareem Khaled
 * GitHub: kareemkhaled12
 * Docker Hub: kreemkhaled
<!-- end list -->
