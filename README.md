# 🚗 MySarthi - EV Ride-Hailing Platform

[![Turborepo](https://img.shields.io/badge/built%20with-Turborepo-cc00ff.svg?style=for-the-badge&logo=turborepo)](https://turborepo.org/)
[![TypeScript](https://img.shields.io/badge/TypeScript-007ACC?style=for-the-badge&logo=typescript&logoColor=white)](https://www.typescriptlang.org/)
[![Node.js](https://img.shields.io/badge/Node.js-43853D?style=for-the-badge&logo=node.js&logoColor=white)](https://nodejs.org/)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![Kafka](https://img.shields.io/badge/Kafka-231F20?style=for-the-badge&logo=apache-kafka&logoColor=white)](https://kafka.apache.org/)
[![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)

**MySarthi** is a production-grade, highly scalable, and strictly EV-only (Electric Vehicle) ride-hailing platform designed specifically for the Indian market.

This repository houses the entire microservices architecture, frontend applications, and shared packages in a **Turborepo** monorepo setup to ensure seamless dependency management, fast builds, and unified code quality.

---

## 🌟 Key Features

- **100% Electric Fleet**: Sustainable and eco-friendly rides.
- **Real-time Location Tracking**: Highly accurate pub/sub-based driver-passenger location syncing.
- **Dynamic Pricing Engine**: Smart pricing algorithms based on demand, supply, and traffic conditions.
- **Multi-tenant Applications**: Distinct apps for Passengers, Drivers, Corporate Clients, and Admins.
- **Microservices Architecture**: Independently scalable backend services using Node.js/TypeScript and Python.
- **Event-Driven**: Asynchronous communication utilizing Apache Kafka.

---

## 🏗️ Architecture & Structure

This project follows a strict Monorepo structure orchestrated by Turborepo.

### 📱 Apps (`/apps`)
Frontend and mobile applications:
- `passenger-app` - Mobile App for Riders (React Native)
- `driver-app` - Mobile App for Drivers/Sarthi (React Native)
- `admin-panel` - Operations & Management Dashboard (Next.js)
- `corporate-dashboard` - B2B portal for Corporate Clients (Next.js)
- `landing-web` - Public-facing marketing website

### ⚙️ Microservices (`/services`)
Backend services handling distinct domain logic:
- `auth-service` - Authentication, JWT, and authorization.
- `user-service` - Passenger and general user profile management.
- `driver-service` - Driver onboarding, verification, and profile management.
- `ride-service` - Core trip management, state machine, and matchmaking.
- `location-service` - Geospatial queries and real-time tracking.
- `pricing-service` - Fare estimation and surge pricing logic.
- `payment-service` - Payment gateway integrations and wallet management.
- `ai-service` - Machine Learning models, recommendations, and analytics.
- `analytics-service` - Business intelligence and telemetry data ingestion.
- `notification-service` - SMS, Email, and Push notifications.
- `reward-service` - Carbon savings tracking, loyalty, and referral rewards.
- `support-service` - Helpdesk, chat, and ticket management.

### 📦 Shared Packages (`/packages`)
Internal libraries used across apps and services:
- `config` - Shared ESLint, TSConfig, and environment validations.
- `database` - Prisma/Drizzle schemas, migrations, and database clients.
- `proto` - gRPC Protocol Buffer definitions.
- `types` - Shared TypeScript interfaces and DTOs.
- `ui` - Shared UI component library (Tailwind CSS, Radix UI).
- `utils` - Common utility functions and helpers.

---

## 🛠️ Tech Stack

- **Frontend**: React, Next.js, React Native, Tailwind CSS
- **Backend**: Node.js, Express/Fastify, TypeScript, Python (AI/Analytics)
- **Database**: PostgreSQL (Relational), Redis (Caching / Rate Limiting)
- **Message Broker**: Apache Kafka
- **Communication**: REST APIs, gRPC, WebSockets
- **Infrastructure**: Docker, Kubernetes, Terraform

---

## 🚀 Getting Started

### Prerequisites
Make sure you have the following installed on your machine:
- [Node.js](https://nodejs.org/) (v18 or higher)
- [npm](https://www.npmjs.com/) (v9 or higher)
- [Docker](https://www.docker.com/) & [Docker Compose](https://docs.docker.com/compose/)

### 1. Clone the repository
```bash
git clone https://github.com/shaheaalam244/SARTHI.git
cd MySarthi
```

### 2. Install Dependencies
Install all dependencies across the monorepo from the root directory:
```bash
npm install
```

### 3. Environment Variables
Copy the example environment file and configure it:
```bash
cp .env.example .env
```
*(Ensure you populate the necessary API keys and secrets in the `.env` file)*

### 4. Start Infrastructure
Boot up the required databases and message brokers (PostgreSQL, Redis, Kafka) using Docker:
```bash
docker-compose up -d
```
*Wait a few moments for Kafka and PostgreSQL to become healthy.*

### 5. Run Database Migrations
*(Assuming you are using a tool like Prisma or Drizzle in the `database` package)*
```bash
npm run db:migrate # Modify based on your actual script
```

### 6. Start Development Servers
Run all applications and services in development mode concurrently:
```bash
npm run dev
```
To run a specific app or service, you can use Turborepo filtering:
```bash
npx turbo run dev --filter=passenger-app --filter=ride-service
```

---

## 🧪 Testing

We use Jest and Supertest for unit and integration testing.

```bash
# Run all tests
npm run test

# Run tests for a specific package/service
npx turbo run test --filter=auth-service
```

---

## 🚢 Deployment

The `infrastructure/` directory contains Terraform scripts and Kubernetes manifests for deploying the platform to AWS/GCP.

Each service and app contains its own `Dockerfile`. CI/CD pipelines (via GitHub Actions) handle the automated building, testing, and pushing of these Docker images to the Container Registry.

---

## 🤝 Contributing

1. Create a new branch: `git checkout -b feature/your-feature-name`
2. Make your changes and commit using Conventional Commits.
3. Push to the branch: `git push origin feature/your-feature-name`
4. Submit a Pull Request.

Please ensure your code passes linting and tests before submitting:
```bash
npm run lint
npm run build
```

---

## 📄 License

This project is proprietary and confidential. Unauthorized copying of files from this repository, via any medium, is strictly prohibited.
