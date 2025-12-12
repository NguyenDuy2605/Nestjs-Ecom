# E-Commerce Backend API - RESTful API

<div align="center">

![NestJS](https://img.shields.io/badge/NestJS-E0234E?style=for-the-badge&logo=nestjs&logoColor=white)
![TypeScript](https://img.shields.io/badge/TypeScript-007ACC?style=for-the-badge&logo=typescript&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![Redis](https://img.shields.io/badge/Redis-DC382D?style=for-the-badge&logo=redis&logoColor=white)
![Prisma](https://img.shields.io/badge/Prisma-2D3748?style=for-the-badge&logo=prisma&logoColor=white)

**A production-ready, scalable e-commerce backend API built with modern technologies**

[Features](#features) • [Tech Stack](#tech-stack) • [Architecture](#architecture) • [Getting Started](#getting-started) • [API Documentation](#api-documentation)

</div>

---

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Tech Stack](#tech-stack)
- [Architecture](#architecture)
- [Getting Started](#getting-started)
- [API Documentation](#api-documentation)
- [Project Structure](#project-structure)
- [Key Highlights](#key-highlights)

---

## Overview

This is a **production-ready e-commerce backend API** demonstrating professional software development practices. The application features a robust RESTful API built with NestJS, implementing advanced patterns including modular architecture, real-time communication, and comprehensive security measures.

### Key Statistics

- **Backend**: 15+ feature modules with RESTful API
- **Database**: 20+ models with complex relationships
- **API Endpoints**: 50+ endpoints covering all e-commerce operations
- **Real-time**: WebSocket support for live updates
- **Security**: JWT authentication, 2FA, RBAC, rate limiting
- **Internationalization**: Multi-language support (i18n)

---

## Features

### Authentication & Authorization

- **JWT-based authentication** with access & refresh tokens
- **OAuth 2.0** integration (Google Sign-In)
- **Two-Factor Authentication (2FA)** with TOTP
- **Role-Based Access Control (RBAC)** with granular permissions
- **Device tracking** and multi-device session management
- **Secure password reset** via OTP email verification

### E-Commerce Core Features

- **Product Management**
  - Multi-variant products with SKU management
  - Product translations (multi-language support)
  - Image galleries and media management
  - Category hierarchy with nested categories
  - Brand management with translations
- **Shopping Cart**
  - Persistent cart across sessions
  - Real-time inventory checking
  - Quantity management
- **Order Management**
  - Complete order lifecycle (Pending → Delivered)
  - Order status tracking
  - Order cancellation
  - Product snapshots for order history
- **Payment Processing**
  - Payment gateway integration
  - Payment status tracking
  - Queue-based payment processing
  - Transaction history
- **Reviews & Ratings**
  - Product reviews with ratings
  - Review media (images/videos)
  - Review update tracking

### Internationalization (i18n)

- Multi-language support for products, categories, brands
- Language-specific content management
- Dynamic language switching
- Fallback language support

### Advanced Features

- **Real-time Communication**
  - WebSocket integration for live updates
  - Payment status notifications
  - Chat functionality
- **Background Jobs & Queues**
  - BullMQ for job processing
  - Payment processing queue
  - Scheduled tasks (cron jobs)
  - Refresh token cleanup automation
- **Caching & Performance**
  - Redis caching layer
  - Query optimization
  - Response caching
- **File Management**
  - AWS S3 integration for media storage
  - Presigned URLs for secure uploads
  - Image optimization
- **Security & Performance**
  - Rate limiting (Throttler)
  - Request validation with Zod
  - Helmet.js for security headers
  - CORS configuration
  - Structured logging with Pino

### Email Services

- OTP email delivery
- Transactional emails
- React Email templates
- Resend API integration

---

## Tech Stack

### Backend

| Technology         | Purpose                           |
| ------------------ | --------------------------------- |
| **NestJS 11**      | Progressive Node.js framework     |
| **TypeScript 5.9** | Type-safe development             |
| **Prisma 6**       | Modern ORM with type safety       |
| **PostgreSQL**     | Primary database                  |
| **Redis**          | Caching & session storage         |
| **BullMQ**         | Job queue management              |
| **Socket.io**      | WebSocket real-time communication |
| **JWT**            | Authentication tokens             |
| **Zod**            | Runtime type validation           |
| **AWS S3**         | Cloud storage                     |
| **Pino**           | High-performance logging          |

### Testing Client (Optional)

A minimal React client is included for testing API endpoints:

- Basic authentication flow
- File upload testing
- OAuth callback handling

### DevOps & Tools

- **ESLint** - Code linting
- **Prettier** - Code formatting
- **Jest** - Testing framework
- **Swagger/OpenAPI** - API documentation
- **Docker** (ready for containerization)

---

## Architecture

### Backend Architecture

```
┌─────────────────────────────────────────────────────────┐
│                    API Clients                          │
│         (Mobile Apps, Web Apps, Third-party)             │
└────────────────────┬────────────────────────────────────┘
                     │
                     │ HTTP/WebSocket
                     │
┌────────────────────▼────────────────────────────────────┐
│                  API Gateway Layer                       │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐ │
│  │   Guards     │  │  Interceptors│  │   Filters    │ │
│  │  (Auth/RBAC) │  │  (Validation)│  │  (Exception) │ │
│  └──────────────┘  └──────────────┘  └──────────────┘ │
└────────────────────┬────────────────────────────────────┘
                     │
┌────────────────────▼────────────────────────────────────┐
│                  Business Logic Layer                    │
│  ┌──────────┐ ┌──────────┐ ┌──────────┐ ┌──────────┐ │
│  │  Auth    │ │ Products │ │  Orders  │ │ Payments │ │
│  │  Module  │ │  Module  │ │  Module  │ │  Module  │ │
│  └──────────┘ └──────────┘ └──────────┘ └──────────┘ │
│  ┌──────────┐ ┌──────────┐ ┌──────────┐ ┌──────────┐ │
│  │   Cart   │ │ Reviews  │ │  Media   │ │   i18n   │ │
│  │  Module  │ │  Module  │ │  Module  │ │  Module  │ │
│  └──────────┘ └──────────┘ └──────────┘ └──────────┘ │
└────────────────────┬────────────────────────────────────┘
                     │
┌────────────────────▼────────────────────────────────────┐
│                  Data Access Layer                       │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐ │
│  │  Repository  │  │    Prisma    │  │    Redis     │ │
│  │   Pattern    │  │     ORM       │  │    Cache     │ │
│  └──────────────┘  └──────────────┘  └──────────────┘ │
└────────────────────┬────────────────────────────────────┘
                     │
┌────────────────────▼────────────────────────────────────┐
│                  Infrastructure Layer                    │
│  ┌──────────┐ ┌──────────┐ ┌──────────┐ ┌──────────┐ │
│  │PostgreSQL│ │  Redis   │ │   S3      │ │  Queue   │ │
│  │ Database │ │  Cache   │ │  Storage  │ │  (BullMQ)│ │
│  └──────────┘ └──────────┘ └──────────┘ └──────────┘ │
└─────────────────────────────────────────────────────────┘
```

### Key Design Patterns

- **Module-based Architecture** - Feature-based organization
- **Repository Pattern** - Data access abstraction
- **DTO Pattern** - Type-safe data transfer
- **Dependency Injection** - Loose coupling
- **Guard Pattern** - Authorization & authentication
- **Interceptor Pattern** - Cross-cutting concerns
- **Factory Pattern** - Service creation

---

## Getting Started

### Prerequisites

- Node.js 18+ and npm
- PostgreSQL 14+
- Redis 6+
- AWS S3 account (for file storage)
- Google OAuth credentials (for OAuth login)

### Installation

1. **Clone the repository**

   ```bash
   git clone <repository-url>
   cd Nestjs-Ecom
   ```

2. **Install dependencies**

   ```bash
   # Backend
   cd ecom
   npm install
   ```

3. **Environment Setup**

   Create a `.env` file in the `ecom` directory:

   ```env
   # Database
   DATABASE_URL="postgresql://user:password@localhost:5432/ecommerce"

   # JWT
   ACCESS_TOKEN_SECRET=your-secret-key
   ACCESS_TOKEN_EXPIRES_IN=15m
   REFRESH_TOKEN_SECRET=your-refresh-secret
   REFRESH_TOKEN_EXPIRES_IN=7d

   # Redis
   REDIS_URL="redis://localhost:6379"

   # AWS S3
   S3_REGION=us-east-1
   S3_ACCESS_KEY=your-access-key
   S3_SECRET_KEY=your-secret-key
   S3_BUCKET_NAME=your-bucket-name
   S3_ENPOINT=https://s3.amazonaws.com

   # OAuth
   GOOGLE_CLIENT_ID=your-google-client-id
   GOOGLE_CLIENT_SECRET=your-google-client-secret
   GOOGLE_REDIRECT_URI=http://localhost:3000/auth/google/callback
   GOOGLE_CLIENT_REDIRECT_URI=http://localhost:5173/oauth

   # Email
   RESEND_API_KEY=your-resend-api-key
   OTP_EXPIRES_IN=5m

   # Payment
   PAYMENT_API_KEY=your-payment-api-key

   # Admin
   ADMIN_NAME=Admin
   ADMIN_EMAIL=admin@example.com
   ADMIN_PASSWORD=secure-password
   ADMIN_PHONE_NUMBER=+1234567890

   # App
   APP_NAME=E-Commerce
   PREFIX_STATIC_ENPOINT=/static
   ```

4. **Database Setup**

   ```bash
   cd ecom
   npx prisma migrate dev
   npx prisma generate
   npm run create-permissions
   npm run init-seed-data
   ```

5. **Run the application**

   ```bash
   cd ecom
   npm run start:dev
   ```

6. **Access the application**

   - Backend API: `http://localhost:3000`
   - API Documentation: `http://localhost:3000/api`

   **Note**: A minimal React testing client is available in the `client` folder for testing purposes.

---

## API Documentation

### Base URL

```
http://localhost:3000
```

### Authentication Endpoints

| Method | Endpoint                | Description           |
| ------ | ----------------------- | --------------------- |
| POST   | `/auth/register`        | User registration     |
| POST   | `/auth/login`           | User login            |
| POST   | `/auth/refresh-token`   | Refresh access token  |
| POST   | `/auth/logout`          | User logout           |
| GET    | `/auth/google-link`     | Get Google OAuth URL  |
| GET    | `/auth/google/callback` | Google OAuth callback |
| POST   | `/auth/otp`             | Send OTP email        |
| POST   | `/auth/forgot-password` | Password reset        |
| POST   | `/auth/2fa/setup`       | Setup 2FA             |
| POST   | `/auth/2fa/disable`     | Disable 2FA           |

### Product Endpoints

| Method | Endpoint        | Description                  |
| ------ | --------------- | ---------------------------- |
| GET    | `/products`     | List products (public)       |
| GET    | `/products/:id` | Get product details (public) |

### Order Endpoints

| Method | Endpoint      | Description       |
| ------ | ------------- | ----------------- |
| GET    | `/orders`     | Get user orders   |
| POST   | `/orders`     | Create new order  |
| GET    | `/orders/:id` | Get order details |
| PUT    | `/orders/:id` | Cancel order      |

### Cart Endpoints

| Method | Endpoint    | Description      |
| ------ | ----------- | ---------------- |
| GET    | `/cart`     | Get user cart    |
| POST   | `/cart`     | Add item to cart |
| PUT    | `/cart/:id` | Update cart item |
| DELETE | `/cart/:id` | Remove cart item |

### Interactive API Documentation

Visit `http://localhost:3000/api` for Swagger UI with:

- Complete endpoint documentation
- Request/response schemas
- Try-it-out functionality
- Authentication testing

---

## Project Structure

```
Nestjs-Ecom/
├── ecom/                          # Backend (NestJS)
│   ├── src/
│   │   ├── routes/                # Feature modules
│   │   │   ├── auth/              # Authentication
│   │   │   ├── product/           # Products
│   │   │   ├── order/             # Orders
│   │   │   ├── cart/              # Shopping cart
│   │   │   ├── payment/           # Payments
│   │   │   ├── review/            # Reviews
│   │   │   ├── category/          # Categories
│   │   │   ├── brand/             # Brands
│   │   │   ├── user/              # User management
│   │   │   ├── role/              # Role management
│   │   │   ├── permission/        # Permissions
│   │   │   └── media/             # File uploads
│   │   ├── shared/                # Shared utilities
│   │   │   ├── guards/            # Auth guards
│   │   │   ├── decorators/        # Custom decorators
│   │   │   ├── filters/           # Exception filters
│   │   │   ├── pipes/             # Validation pipes
│   │   │   ├── interceptors/      # Interceptors
│   │   │   ├── services/          # Shared services
│   │   │   └── repositories/      # Base repositories
│   │   ├── websockets/            # WebSocket gateways
│   │   ├── queues/                # Queue consumers
│   │   ├── cronjobs/              # Scheduled tasks
│   │   ├── i18n/                  # Translations
│   │   └── main.ts                # Application entry
│   ├── prisma/
│   │   ├── schema.prisma          # Database schema
│   │   └── migrations/            # Database migrations
│   └── package.json
│
├── client/                        # Testing Client (Optional)
│   ├── src/                       # Minimal React app for API testing
│   └── package.json
│
└── README.md
```

---

## Key Highlights

### Professional Features

**Type Safety**

- Full TypeScript implementation
- Zod runtime validation
- Prisma type generation
- End-to-end type safety

**Security**

- JWT with refresh token rotation
- 2FA with TOTP
- RBAC with granular permissions
- Rate limiting
- Helmet.js security headers
- Input validation & sanitization

**Scalability**

- Modular architecture
- Queue-based processing
- Redis caching
- Database indexing
- Connection pooling

**Developer Experience**

- Swagger API documentation
- Structured logging
- Error handling
- Code organization
- ESLint & Prettier

**Production Ready**

- Environment configuration
- Database migrations
- Error handling
- Logging & monitoring
- Background jobs

### Best Practices Implemented

- **SOLID Principles** - Single responsibility, dependency injection
- **DRY** - Reusable components and services
- **Repository Pattern** - Data access abstraction
- **DTO Pattern** - Type-safe data transfer
- **Guard Pattern** - Authorization logic
- **Interceptor Pattern** - Cross-cutting concerns
- **Factory Pattern** - Service creation

### Performance Optimizations

- Redis caching for frequently accessed data
- Database query optimization with Prisma
- Connection pooling
- Lazy loading where appropriate
- Efficient pagination
- Background job processing

---

## Author

Built with modern web technologies

---

<div align="center">

**Star this repo if you find it impressive!**

Built with [NestJS](https://nestjs.com/)

</div>
