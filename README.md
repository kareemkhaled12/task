# 🔷 Go Web App (Dockerized)

A simple Go web application containerized with Docker for the Distributed Systems course (Assignment 03).

---

## ✅ Assignment Submission: Docker Image

The public Docker Hub image link required for this assignment is:

🔗 **[https://hub.docker.com/r/kreemkhaled/go-app](https://hub.docker.com/r/kreemkhaled/go-app)**

---

## 🚦 How to Run the Application

There are two main ways to run this project.

### Method 1: Pull from Docker Hub (Recommended)

This runs the pre-built image directly from Docker Hub.

1.  **Pull the image:**
    ```bash
    docker pull kreemkhaled/go-app
    ```

2.  **Run the container:**
    ```bash
    docker run -p 8080:8080 kreemkhaled/go-app
    ```

---

### Method 2: Build Locally from Source

This method clones the repository and builds the image on your machine.

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/kareemkhaled12/task.git](https://github.com/kareemkhaled12/task.git)
    cd task
    ```

2.  **Build the Docker image:**
    ```bash
    docker build -t kareem-local-build .
    ```

3.  **Run the local container:**
    ```bash
    docker run -p 8080:8080 kareem-local-build
    ```

---

After running via either method, the application will be available at:
**🔗 [http://localhost:8080](http://localhost:8080)**

---

## 📂 Project Files

-   `main.go`: The core Go web server.
-   `Dockerfile`: Docker build instructions.
-   `go.mod` / `go.sum`: Go dependency files.
-   `README.md`: This documentation file.

---

## 🛠️ (Developer) Publishing Steps
*These are the steps used to publish the image.*

1.  **Login:**
    ```bash
    docker login
    ```
2.  **Tag:**
    *(Tag the local build, e.g., 'kareem-local-build')*
    ```bash
    docker tag kareem-local-build kreemkhaled/go-app
    ```
3.  **Push:**
    ```bash
    docker push kreemkhaled/go-app
    ```

---

## 👨‍💻 Author Details

-   **Name:** Kareem Khaled
-   **Email:** `Kareemalsayes8@gmail.com`
-   **GitHub:** [@kareemkhaled12](https://github.com/kareemkhaled12)
-   **Docker Hub:** [@kreemkhaled](https://hub.docker.com/u/kreemkhaled)

⭐ *Don't forget to star the repo if you found this helpful!*
