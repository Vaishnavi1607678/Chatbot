
# AI Chatbot with DevOps Tools (FastAPI + OpenAI + Docker)

A real-time chatbot application built with FastAPI and OpenAI, containerized using Docker, and designed with DevOps practices in mind. Easily deployable and extensible.

##  Tech Stack

- Backend: FastAPI (Python)
- AI Engine: OpenAI GPT (GPT-4o-mini)
- Containerization: Docker
- DevOps (Optional): GitHub Actions, Terraform, Kubernetes (EKS)

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/chatbot-devops-project.git
cd chatbot-devops-project/backend
````

### 2. Set Your OpenAI API Key

Ensure you have an OpenAI key from [https://platform.openai.com/account/api-keys](https://platform.openai.com/account/api-keys)

---

### 3. Build and Run with Docker

```bash
docker build -t chatbot-fastapi .
docker run -e OPENAI_API_KEY=your_openai_api_key -p 8000:8000 chatbot-fastapi
```

---

## ✅ API Usage
![Screenshot (442![Screenshot (440)](https://github.com/user-attachments/assets/22e23224-f62d-47ea-b9e2-f45b579e0807)
)](https://github.com/user-attachments/assets/f71f5694-d34c-4139-a940-42c5e7ab4aaa)

### 🩺 Health Check

```bash
GET http://localhost:8000/
```

**Response:**

```json
{
  "message": "Chatbot is running"
}
```

---

###  Chat Endpoint

```bash
POST http://localhost:8000/chat
Content-Type: application/json

{
  "message": "What is DevOps?"
}
```

**Response Example:**

```json
{
  "response": "DevOps is a set of practices that combines software development and IT operations..."
}
```

---

## Deployment Options

* Local using Docker
* Optional: AWS EKS with Terraform
* Secrets: Use environment variables (e.g., `OPENAI_API_KEY`)

---

##  DevOps (CI/CD Optional)

You can add GitHub Actions for:

* Build & test
* Docker push
* Kubernetes deploy (if desired)

Example pipeline is available in `.github/workflows/ci-cd.yml`.

---

##  Future Enhancements

* Add a React/Next.js frontend UI
* Integrate user session management
* Deploy via AWS EKS with Helm


