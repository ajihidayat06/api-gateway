# API Gateway Setup

## Prerequisites
- Docker
- Docker Compose

## How to Run
1. Clone this repository
2. Build external services first:
   ```bash
   # Di repo user-service
   docker build -t your-username/user-service:latest .

   # Di repo app-service
   docker build -t your-username/app-service:latest .