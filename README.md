# Media Sharing Platform using FastAPI

A full-stack photo video sharing application built using **FastAPI**, **Streamlit**, **FastAPI Users**, **SQLAlchemy Async**, and **ImageKit CDN**.

Users can:

* Register and login using JWT authentication
* Upload images/videos
* View posts in a feed
* Delete their own posts
* Store and serve media using ImageKit CDN

---

# Features

## Authentication

* User registration
* JWT login authentication
* Protected routes
* Current authenticated user access

## Media Uploads

* Upload images and videos
* ImageKit CDN integration
* Temporary file handling
* Media metadata storage in database

## Feed System

* View uploaded posts
* Reverse chronological ordering
* Display post owner information
* Delete own posts

## Database

* Async SQLAlchemy setup
* SQLite database
* UUID-based users and posts
* Relationships between users and posts

---
# Screenshots

## SignUp/Login Page
<img width="1907" height="958" alt="Welcome-1" src="https://github.com/user-attachments/assets/5afe9dd7-0b83-46a4-9460-ca8757171e16" />

## Feed Page
<img width="1913" height="965" alt="Feed-Home-2" src="https://github.com/user-attachments/assets/66fbf7f9-407e-4b46-b77d-8f58c4c467d1" />

## Upload Page
<img width="1914" height="960" alt="Upload-share-3" src="https://github.com/user-attachments/assets/951c0746-18e5-4e59-90e7-fa8eb7620288" />

## Shared Image
<img width="1905" height="942" alt="Feed After" src="https://github.com/user-attachments/assets/cdf0b9b2-bf9e-483e-ab11-a9e96a3b28e0" />

## OAuth Token Generation
<img width="1907" height="968" alt="OAuth2Password-0" src="https://github.com/user-attachments/assets/c33ec8a1-ce53-4d26-901d-0c7500e4ffad" />

## FastAPI Docs
<img width="1914" height="960" alt="FastAPI-1" src="https://github.com/user-attachments/assets/6c678f27-af71-4d68-80da-a93ea7f07be2" />

<img width="1906" height="910" alt="FastAPI-2" src="https://github.com/user-attachments/assets/90b5c316-6ebf-4017-92cc-d6c2d5662526" />

<img width="1905" height="910" alt="FastAPI-3" src="https://github.com/user-attachments/assets/32aa856e-1924-4c9a-96c8-84ee333341da" />

## Imagekito Dashboard
<img width="1906" height="964" alt="imagekito dashboard" src="https://github.com/user-attachments/assets/4203cd0d-6b91-4fd2-9e8e-ea52a642a1a1" />



# Tech Stack

## Backend

* FastAPI
* FastAPI Users
* SQLAlchemy Async
* SQLite
* Uvicorn

## Frontend

* Streamlit

## Media Storage

* ImageKit

## Authentication

* JWT Tokens

---

# Project Structure

```bash
Project/
│
├── app/
│   ├── app.py
│   ├── db.py
│   ├── images.py
│   ├── schemas.py
│   └── users.py
│
├── frontend.py
├── main.py
├── pyproject.toml
├── test.db
└── README.md
```

---

# Installation

## 1. Clone the Repository

```bash
git clone <your-repo-url>
cd FastAPI_Project
```

---

## 2. Create Virtual Environment

```bash
uv venv
```

Activate environment:

### Windows

```bash
.venv\Scripts\activate
```

### Linux/Mac

```bash
source .venv/bin/activate
```

---

# Install Dependencies

```bash
uv sync
```

---

# Environment Variables

Create a `.env` file in the project root.

```env
IMAGEKIT_PRIVATE_KEY=your_private_key
IMAGEKIT_PUBLIC_KEY=your_public_key
IMAGEKIT_URL_ENDPOINT=https://ik.imagekit.io/your_imagekit_id
```

---

# Important Dependency Note

This project uses:

```txt
imagekitio==4.1.0
```

Newer versions may have breaking API changes.

---

# Running the Backend

```bash
uv run .\main.py
```

Backend runs at:

```txt
http://127.0.0.1:8000
```

Swagger Docs:

```txt
http://127.0.0.1:8000/docs
```

---

# Running the Frontend

```bash
streamlit run frontend.py
```

Frontend runs at:

```txt
http://localhost:8501
```

---

# API Endpoints

## Authentication

### Register User

```http
POST /auth/register
```

### Login User

```http
POST /auth/jwt/login
```

### Get Current User

```http
GET /users/me
```

---

## Posts

### Upload Post

```http
POST /upload
```

### Get Feed

```http
GET /feed
```

### Delete Post

```http
DELETE /posts/{post_id}
```

---

# Database Models

## User

Fields:

* id
* email
* hashed_password
* is_active
* is_verified

## Post

Fields:

* id
* user_id
* caption
* url
* file_type
* file_name
* created_at

---

# Image Upload Flow

1. User uploads media from Streamlit frontend
2. FastAPI receives file
3. File stored temporarily
4. Media uploaded to ImageKit
5. ImageKit URL saved in database
6. URL returned to frontend feed

---

# Security Notes

## JWT Secret

Use a strong secret key:

```python
SECRET = "your_super_long_secure_secret_key"
```

Avoid short secrets in production.

---

# Future Improvements

Possible improvements for scaling this project:

* PostgreSQL instead of SQLite
* Next.js frontend
* Docker support
* Cloud deployment
* Like/comment system
* Follow system
* Real-time notifications
* Redis caching
* Background workers
* S3 storage support
* Role-based access
* Pagination for feeds

---

# Common Issues

## ImageKit Constructor Error

If you see:

```txt
TypeError: ImageKit.__init__() got an unexpected keyword argument 'public_key'
```

Ensure:

```txt
imagekitio==4.1.0
```

is installed.

---

## Upload 500 Error

Check:

* ImageKit credentials
* `.env` file
* Upload syntax
* ImageKit SDK version

---

# Learning Outcomes

This project demonstrates:

* REST API development
* JWT authentication
* Async database handling
* CDN-based media storage
* File uploads
* Full-stack integration
* ORM relationships
* Protected FastAPI routes
