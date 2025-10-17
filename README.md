# Backend Wizards - Stage 0 Task

This is a RESTful API that returns my developer profile and a dynamic cat fact, deployed as a Docker container on an AWS EC2 instance.

## Live Endpoint

You can access the live API here:
`http://13.60.29.138:3000/me`

## API Response Structure

The endpoint returns a JSON object with the following structure:

```json
{
  "status": "success",
  "user": {
    "email": "ngefacbrightmarc@gmail.com",
    "name": "NKENGAFAC NGEFAC",
    "stack": "Node.js/Express with Docker on AWS"
  },
  "timestamp": "2025-10-17T15:30:00.123Z",
  "fact": "A random cat fact appears here."
}
```

## How to Run This Project Locally Using Docker

This project is containerized with Docker, making it easy to run on any machine with Docker installed.

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/Brightmarc12/hng_backend-stage0
    cd hng_backend-stage0
    ```

2.  **Create your environment file:**
    Create a file named `.env` in the project root and add the following variables:
    ```
    MY_EMAIL=your-local-email@example.com
    MY_NAME=Your Full Name
    MY_STACK=Node.js/Express (Local Docker)
    ```

3.  **Build the Docker image:**
    ```bash
    docker build -t my-profile-app .
    ```

4.  **Run the Docker container:**
    ```bash
    docker run -p 3000:3000 --env-file .env my-profile-app
    ```

5.  The application will be available at `http://localhost:3000/me`.

## Technology Stack

*   **Backend:** Node.js, Express.js
*   **Containerization:** Docker
*   **Deployment:** AWS EC2