# GoIT Computer Science Homework 02

This repository contains solutions for two tasks: a website availability checker script and a Docker setup for a FastAPI application with PostgreSQL.

## Task 1: Website Availability Checker

The `task1/task1.sh` script checks the status of websites listed in the script and logs the results to `website_status.log`.

### How to Run

1.  Navigate to the `task1` directory.
2.  Execute the script:
    ```bash
    bash task1.sh
    ```
3.  Check the `website_status.log` file for the output.

## Task 2: Dockerized FastAPI Application

This task involves containerizing a FastAPI application with a PostgreSQL database using Docker and Docker Compose.

### How to Run

1.  Ensure Docker is running.
2.  Navigate to the `task2` directory:
    ```bash
    cd task2
    ```
3.  Build and run the containers:
    ```bash
    docker compose up --build -d
    ```

### Verification

1.  Open your web browser and go to `http://localhost:8000`.
2.  You should see the "Welcome to FastAPI!" page.
3.  Click the "Check DB" button to verify the database connection.

### How to Stop

To stop and remove the containers, networks, and volumes, run:
```bash
docker compose down -v
```