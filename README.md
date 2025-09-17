# Laravel Vue Challenge

A modern full-stack web application built with Laravel (PHP) backend and Vue.js frontend, showcasing best practices in full-stack development.

## 🚀 Features

- **Backend**: Laravel API with RESTful endpoints
- **Frontend**: Vue.js SPA with modern UI components
- **Database**: MySQL/PostgreSQL with Eloquent ORM
- **Authentication**: Secure JWT-based authentication
- **State Management**: Vuex/Pinia for frontend state
- **Styling**: Modern CSS framework integration
- **Testing**: Unit and integration tests

## 🛠️ Tech Stack

### Backend
- **Laravel** - PHP Framework
- **MySQL/PostgreSQL** - Database
- **JWT** - Authentication
- **Laravel Sanctum** - API Authentication
- **Eloquent ORM** - Database abstraction

### Frontend
- **Vue.js 3** - JavaScript Framework
- **Vue Router** - Client-side routing
- **Vuex/Pinia** - State management
- **Axios** - HTTP client
- **Vite** - Build tool

## 📋 Prerequisites

Before running this project, make sure you have the following installed:

- **PHP** >= 8.1
- **Composer** - PHP dependency manager
- **Node.js** >= 16.x
- **npm** or **yarn** - JavaScript package manager
- **MySQL** or **PostgreSQL** - Database server

## 🚀 Quick Start

### 1. Clone the Repository
```bash
git clone https://github.com/marcelomoreiravelloso/laravel-vue-challenge.git
cd laravel-vue-challenge
```

### 2. Backend Setup (Laravel)

```bash
# Install PHP dependencies
composer install

# Copy environment file
cp .env.example .env

# Generate application key
php artisan key:generate

# Configure your database in .env file
# DB_CONNECTION=mysql
# DB_HOST=127.0.0.1
# DB_PORT=3306
# DB_DATABASE=laravel_vue_challenge
# DB_USERNAME=your_username
# DB_PASSWORD=your_password

# Run database migrations
php artisan migrate

# Seed the database (optional)
php artisan db:seed

# Start the Laravel development server
php artisan serve
```

The backend API will be available at: `http://localhost:8000`

### 3. Frontend Setup (Vue.js)

```bash
# Navigate to frontend directory
cd resources/js

# Install JavaScript dependencies
npm install

# Start the development server
npm run dev
```

The frontend will be available at: `http://localhost:5173`

## 🏗️ Project Structure

```
laravel-vue-challenge/
├── app/                    # Laravel backend
│   ├── Http/
│   │   ├── Controllers/    # API Controllers
│   │   └── Middleware/     # Custom middleware
│   ├── Models/             # Eloquent models
│   └── Services/           # Business logic
├── database/
│   ├── migrations/         # Database migrations
│   └── seeders/           # Database seeders
├── resources/
│   ├── js/                # Vue.js frontend
│   │   ├── components/    # Vue components
│   │   ├── views/         # Vue views
│   │   ├── router/        # Vue Router config
│   │   └── store/         # State management
│   └── css/               # Stylesheets
├── routes/
│   ├── api.php            # API routes
│   └── web.php            # Web routes
├── tests/                  # Test files
└── public/                 # Public assets
```

## 🔧 API Endpoints

### Authentication
- `POST /api/register` - User registration
- `POST /api/login` - User login
- `POST /api/logout` - User logout
- `GET /api/user` - Get authenticated user

### Example endpoints (customize as needed)
- `GET /api/posts` - Get all posts
- `POST /api/posts` - Create a new post
- `GET /api/posts/{id}` - Get specific post
- `PUT /api/posts/{id}` - Update post
- `DELETE /api/posts/{id}` - Delete post

## 🧪 Testing

### Backend Tests
```bash
# Run PHP tests
php artisan test

# Run specific test suite
php artisan test --filter=Feature
```

### Frontend Tests
```bash
# Run Vue.js tests
npm run test

# Run tests in watch mode
npm run test:watch
```

## 🚀 Deployment

### Backend Deployment
1. Set up production database
2. Configure environment variables
3. Run migrations: `php artisan migrate --force`
4. Optimize for production: `php artisan config:cache`

### Frontend Deployment
```bash
# Build for production
npm run build
```

## 📝 Environment Variables

### Backend (.env)
```env
APP_NAME="Laravel Vue Challenge"
APP_ENV=production
APP_KEY=base64:your_app_key
APP_DEBUG=false
APP_URL=http://localhost:8000

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=laravel_vue_challenge
DB_USERNAME=your_username
DB_PASSWORD=your_password

JWT_SECRET=your_jwt_secret
```

### Frontend (.env)
```env
VITE_API_BASE_URL=http://localhost:8000/api
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/amazing-feature`
3. Commit your changes: `git commit -m 'Add amazing feature'`
4. Push to the branch: `git push origin feature/amazing-feature`
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Marcelo Moreira Velloso**
- GitHub: [@marcelomoreiravelloso](https://github.com/marcelomoreiravelloso)

## 🙏 Acknowledgments

- Laravel team for the amazing framework
- Vue.js team for the reactive frontend framework
- All contributors and open-source community

---

**Happy Coding! 🎉**
