# API Backend Thương Mại Điện Tử - RESTful API

<div align="center">

![NestJS](https://img.shields.io/badge/NestJS-E0234E?style=for-the-badge&logo=nestjs&logoColor=white)
![TypeScript](https://img.shields.io/badge/TypeScript-007ACC?style=for-the-badge&logo=typescript&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![Redis](https://img.shields.io/badge/Redis-DC382D?style=for-the-badge&logo=redis&logoColor=white)
![Prisma](https://img.shields.io/badge/Prisma-2D3748?style=for-the-badge&logo=prisma&logoColor=white)

**API backend thương mại điện tử sẵn sàng cho sản xuất, có khả năng mở rộng được xây dựng với các công nghệ hiện đại**

[Tính Năng](#tính-năng) • [Công Nghệ](#công-nghệ) • [Kiến Trúc](#kiến-trúc) • [Bắt Đầu](#bắt-đầu) • [Tài Liệu API](#tài-liệu-api)

</div>

---

## Mục Lục

- [Tổng Quan](#tổng-quan)
- [Tính Năng](#tính-năng)
- [Công Nghệ](#công-nghệ)
- [Kiến Trúc](#kiến-trúc)
- [Bắt Đầu](#bắt-đầu)
- [Tài Liệu API](#tài-liệu-api)
- [Cấu Trúc Dự Án](#cấu-trúc-dự-án)
- [Điểm Nổi Bật](#điểm-nổi-bật)

---

## Tổng Quan

Đây là một **API backend thương mại điện tử sẵn sàng cho sản xuất** thể hiện các thực hành phát triển phần mềm chuyên nghiệp. Ứng dụng có RESTful API mạnh mẽ được xây dựng với NestJS, triển khai các mẫu nâng cao bao gồm kiến trúc module, giao tiếp real-time, và các biện pháp bảo mật toàn diện.

### Thống Kê Chính

- **Backend**: 15+ module tính năng với RESTful API
- **Database**: 20+ models với các mối quan hệ phức tạp
- **API Endpoints**: 50+ endpoints bao phủ tất cả các thao tác thương mại điện tử
- **Real-time**: Hỗ trợ WebSocket cho cập nhật trực tiếp
- **Bảo Mật**: Xác thực JWT, 2FA, RBAC, giới hạn tốc độ
- **Đa Ngôn Ngữ**: Hỗ trợ đa ngôn ngữ (i18n)

---

## Tính Năng

### Xác Thực & Phân Quyền

- **Xác thực dựa trên JWT** với access & refresh tokens
- **Tích hợp OAuth 2.0** (Đăng nhập Google)
- **Xác thực Hai Yếu Tố (2FA)** với TOTP
- **Kiểm Soát Truy Cập Dựa Trên Vai Trò (RBAC)** với quyền chi tiết
- **Theo dõi thiết bị** và quản lý phiên đa thiết bị
- **Đặt lại mật khẩu an toàn** qua xác minh OTP email

### Tính Năng Thương Mại Điện Tử Cốt Lõi

- **Quản Lý Sản Phẩm**
  - Sản phẩm đa biến thể với quản lý SKU
  - Bản dịch sản phẩm (hỗ trợ đa ngôn ngữ)
  - Thư viện hình ảnh và quản lý media
  - Phân cấp danh mục với danh mục lồng nhau
  - Quản lý thương hiệu với bản dịch
- **Giỏ Hàng**
  - Giỏ hàng bền vững qua các phiên
  - Kiểm tra tồn kho real-time
  - Quản lý số lượng
- **Quản Lý Đơn Hàng**
  - Vòng đời đơn hàng hoàn chỉnh (Chờ → Đã Giao)
  - Theo dõi trạng thái đơn hàng
  - Hủy đơn hàng
  - Snapshot sản phẩm cho lịch sử đơn hàng
- **Xử Lý Thanh Toán**
  - Tích hợp cổng thanh toán
  - Theo dõi trạng thái thanh toán
  - Xử lý thanh toán dựa trên queue
  - Lịch sử giao dịch
- **Đánh Giá & Xếp Hạng**
  - Đánh giá sản phẩm với xếp hạng
  - Media đánh giá (hình ảnh/video)
  - Theo dõi cập nhật đánh giá

### Đa Ngôn Ngữ (i18n)

- Hỗ trợ đa ngôn ngữ cho sản phẩm, danh mục, thương hiệu
- Quản lý nội dung theo ngôn ngữ
- Chuyển đổi ngôn ngữ động
- Hỗ trợ ngôn ngữ dự phòng

### Tính Năng Nâng Cao

- **Giao Tiếp Real-time**
  - Tích hợp WebSocket cho cập nhật trực tiếp
  - Thông báo trạng thái thanh toán
  - Chức năng chat
- **Công Việc Nền & Hàng Đợi**
  - BullMQ cho xử lý công việc
  - Hàng đợi xử lý thanh toán
  - Tác vụ theo lịch (cron jobs)
  - Tự động dọn dẹp refresh token
- **Bộ Nhớ Đệm & Hiệu Suất**
  - Lớp bộ nhớ đệm Redis
  - Tối ưu hóa truy vấn
  - Bộ nhớ đệm phản hồi
- **Quản Lý Tệp**
  - Tích hợp AWS S3 cho lưu trữ media
  - URL được ký trước cho tải lên an toàn
  - Tối ưu hóa hình ảnh
- **Bảo Mật & Hiệu Suất**
  - Giới hạn tốc độ (Throttler)
  - Xác thực yêu cầu với Zod
  - Helmet.js cho security headers
  - Cấu hình CORS
  - Ghi log có cấu trúc với Pino

### Dịch Vụ Email

- Gửi email OTP
- Email giao dịch
- Mẫu React Email
- Tích hợp Resend API

---

## Công Nghệ

### Backend

| Công Nghệ          | Mục Đích                      |
| ------------------ | ----------------------------- |
| **NestJS 11**      | Framework Node.js tiến bộ     |
| **TypeScript 5.9** | Phát triển an toàn kiểu       |
| **Prisma 6**       | ORM hiện đại với an toàn kiểu |
| **PostgreSQL**     | Cơ sở dữ liệu chính           |
| **Redis**          | Bộ nhớ đệm & lưu trữ phiên    |
| **BullMQ**         | Quản lý hàng đợi công việc    |
| **Socket.io**      | Giao tiếp WebSocket real-time |
| **JWT**            | Token xác thực                |
| **Zod**            | Xác thực kiểu runtime         |
| **AWS S3**         | Lưu trữ đám mây               |
| **Pino**           | Ghi log hiệu suất cao         |

### Client Testing (Tùy Chọn)

Một React client tối thiểu được bao gồm để kiểm thử các API endpoints:

- Luồng xác thực cơ bản
- Kiểm thử tải lên tệp
- Xử lý callback OAuth

### DevOps & Công Cụ

- **ESLint** - Kiểm tra mã
- **Prettier** - Định dạng mã
- **Jest** - Framework kiểm thử
- **Swagger/OpenAPI** - Tài liệu API
- **Docker** (sẵn sàng cho containerization)

---

## Kiến Trúc

### Kiến Trúc Backend

```
┌─────────────────────────────────────────────────────────┐
│                    API Clients                          │
│    (Ứng Dụng Di Động, Web Apps, Bên Thứ Ba)             │
└────────────────────┬────────────────────────────────────┘
                     │
                     │ HTTP/WebSocket
                     │
┌────────────────────▼────────────────────────────────────┐
│                  Lớp API Gateway                          │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐ │
│  │   Guards     │  │  Interceptors│  │   Filters    │ │
│  │  (Auth/RBAC) │  │  (Validation)│  │  (Exception) │ │
│  └──────────────┘  └──────────────┘  └──────────────┘ │
└────────────────────┬────────────────────────────────────┘
                     │
┌────────────────────▼────────────────────────────────────┐
│                  Lớp Logic Nghiệp Vụ                      │
│  ┌──────────┐ ┌──────────┐ ┌──────────┐ ┌──────────┐ │
│  │  Auth    │ │ Products │ │  Orders  │ │ Payments │ │
│  │  Module  │ │  Module  │ │  Module  │ │  Module  │ │
│  └──────────┘ └──────────┘ └──────────┘ └──────────┘ │
│  ┌──────────┐ ┌──────────┐ ┌──────────┐ ┌──────────┐ │
│  │   Cart   │ │ Reviews  │ │  Media  │ │   i18n  │ │
│  │  Module  │ │  Module  │ │  Module  │ │  Module  │ │
│  └──────────┘ └──────────┘ └──────────┘ └──────────┘ │
└────────────────────┬────────────────────────────────────┘
                     │
┌────────────────────▼────────────────────────────────────┐
│                  Lớp Truy Cập Dữ Liệu                    │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐ │
│  │  Repository  │  │    Prisma    │  │    Redis     │ │
│  │   Pattern    │  │     ORM       │  │    Cache     │ │
│  └──────────────┘  └──────────────┘  └──────────────┘ │
└────────────────────┬────────────────────────────────────┘
                     │
┌────────────────────▼────────────────────────────────────┐
│                  Lớp Hạ Tầng                             │
│  ┌──────────┐ ┌──────────┐ ┌──────────┐ ┌──────────┐ │
│  │PostgreSQL│ │  Redis   │ │   S3     │ │  Queue   │ │
│  │ Database │ │  Cache   │ │  Storage │ │  (BullMQ)│ │
│  └──────────┘ └──────────┘ └──────────┘ └──────────┘ │
└─────────────────────────────────────────────────────────┘
```

### Các Mẫu Thiết Kế Chính

- **Kiến Trúc Dựa Trên Module** - Tổ chức theo tính năng
- **Repository Pattern** - Trừu tượng hóa truy cập dữ liệu
- **DTO Pattern** - Truyền dữ liệu an toàn kiểu
- **Dependency Injection** - Liên kết lỏng lẻo
- **Guard Pattern** - Phân quyền & xác thực
- **Interceptor Pattern** - Quan tâm xuyên suốt
- **Factory Pattern** - Tạo dịch vụ

---

## Bắt Đầu

### Yêu Cầu

- Node.js 18+ và npm
- PostgreSQL 14+
- Redis 6+
- Tài khoản AWS S3 (cho lưu trữ tệp)
- Thông tin xác thực Google OAuth (cho đăng nhập OAuth)

### Cài Đặt

1. **Clone repository**

   ```bash
   git clone <repository-url>
   cd Nestjs-Ecom
   ```

2. **Cài đặt dependencies**

   ```bash
   # Backend
   cd ecom
   npm install
   ```

3. **Thiết Lập Môi Trường**

   Tạo file `.env` trong thư mục `ecom`:

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

4. **Thiết Lập Database**

   ```bash
   cd ecom
   npx prisma migrate dev
   npx prisma generate
   npm run create-permissions
   npm run init-seed-data
   ```

5. **Chạy ứng dụng**

   ```bash
   cd ecom
   npm run start:dev
   ```

6. **Truy cập ứng dụng**

   - Backend API: `http://localhost:3000`
   - Tài liệu API: `http://localhost:3000/api`

   **Lưu ý**: Một React client tối thiểu có sẵn trong thư mục `client` để phục vụ mục đích kiểm thử.

---

## Tài Liệu API

### Base URL

```
http://localhost:3000
```

### Các Endpoint Xác Thực

| Phương Thức | Endpoint                | Mô Tả                 |
| ----------- | ----------------------- | --------------------- |
| POST        | `/auth/register`        | Đăng ký người dùng    |
| POST        | `/auth/login`           | Đăng nhập người dùng  |
| POST        | `/auth/refresh-token`   | Làm mới access token  |
| POST        | `/auth/logout`          | Đăng xuất người dùng  |
| GET         | `/auth/google-link`     | Lấy URL Google OAuth  |
| GET         | `/auth/google/callback` | Callback Google OAuth |
| POST        | `/auth/otp`             | Gửi email OTP         |
| POST        | `/auth/forgot-password` | Đặt lại mật khẩu      |
| POST        | `/auth/2fa/setup`       | Thiết lập 2FA         |
| POST        | `/auth/2fa/disable`     | Tắt 2FA               |

### Các Endpoint Sản Phẩm

| Phương Thức | Endpoint        | Mô Tả                             |
| ----------- | --------------- | --------------------------------- |
| GET         | `/products`     | Liệt kê sản phẩm (công khai)      |
| GET         | `/products/:id` | Lấy chi tiết sản phẩm (công khai) |

### Các Endpoint Đơn Hàng

| Phương Thức | Endpoint      | Mô Tả                       |
| ----------- | ------------- | --------------------------- |
| GET         | `/orders`     | Lấy đơn hàng của người dùng |
| POST        | `/orders`     | Tạo đơn hàng mới            |
| GET         | `/orders/:id` | Lấy chi tiết đơn hàng       |
| PUT         | `/orders/:id` | Hủy đơn hàng                |

### Các Endpoint Giỏ Hàng

| Phương Thức | Endpoint    | Mô Tả                       |
| ----------- | ----------- | --------------------------- |
| GET         | `/cart`     | Lấy giỏ hàng của người dùng |
| POST        | `/cart`     | Thêm sản phẩm vào giỏ hàng  |
| PUT         | `/cart/:id` | Cập nhật mục giỏ hàng       |
| DELETE      | `/cart/:id` | Xóa mục giỏ hàng            |

### Tài Liệu API Tương Tác

Truy cập `http://localhost:3000/api` để xem Swagger UI với:

- Tài liệu endpoint đầy đủ
- Schema request/response
- Chức năng thử nghiệm
- Kiểm tra xác thực

---

## Cấu Trúc Dự Án

```
Nestjs-Ecom/
├── ecom/                          # Backend (NestJS)
│   ├── src/
│   │   ├── routes/                # Các module tính năng
│   │   │   ├── auth/              # Xác thực
│   │   │   ├── product/           # Sản phẩm
│   │   │   ├── order/             # Đơn hàng
│   │   │   ├── cart/              # Giỏ hàng
│   │   │   ├── payment/           # Thanh toán
│   │   │   ├── review/            # Đánh giá
│   │   │   ├── category/          # Danh mục
│   │   │   ├── brand/             # Thương hiệu
│   │   │   ├── user/              # Quản lý người dùng
│   │   │   ├── role/              # Quản lý vai trò
│   │   │   ├── permission/        # Quyền
│   │   │   └── media/             # Tải lên tệp
│   │   ├── shared/                # Tiện ích dùng chung
│   │   │   ├── guards/            # Auth guards
│   │   │   ├── decorators/        # Decorator tùy chỉnh
│   │   │   ├── filters/           # Exception filters
│   │   │   ├── pipes/             # Validation pipes
│   │   │   ├── interceptors/      # Interceptors
│   │   │   ├── services/          # Dịch vụ dùng chung
│   │   │   └── repositories/      # Repository cơ sở
│   │   ├── websockets/            # WebSocket gateways
│   │   ├── queues/                # Queue consumers
│   │   ├── cronjobs/              # Tác vụ theo lịch
│   │   ├── i18n/                  # Bản dịch
│   │   └── main.ts                # Điểm vào ứng dụng
│   ├── prisma/
│   │   ├── schema.prisma          # Schema database
│   │   └── migrations/            # Migration database
│   └── package.json
│
├── client/                        # Testing Client (Tùy Chọn)
│   ├── src/                       # Ứng dụng React tối thiểu để kiểm thử API
│   └── package.json
│
└── README.md
```

---

## Điểm Nổi Bật

### Tính Năng Chuyên Nghiệp

**An Toàn Kiểu**

- Triển khai TypeScript đầy đủ
- Xác thực runtime Zod
- Tạo kiểu Prisma
- An toàn kiểu end-to-end

**Bảo Mật**

- JWT với xoay refresh token
- 2FA với TOTP
- RBAC với quyền chi tiết
- Giới hạn tốc độ
- Security headers Helmet.js
- Xác thực & làm sạch đầu vào

**Khả Năng Mở Rộng**

- Kiến trúc module
- Xử lý dựa trên queue
- Bộ nhớ đệm Redis
- Lập chỉ mục database
- Connection pooling

**Trải Nghiệm Nhà Phát Triển**

- Tài liệu API Swagger
- Ghi log có cấu trúc
- Xử lý lỗi
- Tổ chức mã
- ESLint & Prettier

**Sẵn Sàng Sản Xuất**

- Cấu hình môi trường
- Migration database
- Xử lý lỗi
- Ghi log & giám sát
- Công việc nền

### Các Thực Hành Tốt Nhất Đã Triển Khai

- **Nguyên Tắc SOLID** - Trách nhiệm đơn lẻ, dependency injection
- **DRY** - Component và dịch vụ có thể tái sử dụng
- **Repository Pattern** - Trừu tượng hóa truy cập dữ liệu
- **DTO Pattern** - Truyền dữ liệu an toàn kiểu
- **Guard Pattern** - Logic phân quyền
- **Interceptor Pattern** - Quan tâm xuyên suốt
- **Factory Pattern** - Tạo dịch vụ

### Tối Ưu Hóa Hiệu Suất

- Bộ nhớ đệm Redis cho dữ liệu truy cập thường xuyên
- Tối ưu hóa truy vấn database với Prisma
- Connection pooling
- Lazy loading khi phù hợp
- Phân trang hiệu quả
- Xử lý công việc nền

---

## Tác Giả

Được xây dựng với các công nghệ web hiện đại

---

<div align="center">

**Hãy đánh dấu sao repo này nếu bạn thấy ấn tượng!**

Được xây dựng bằng [NestJS](https://nestjs.com/)

</div>
