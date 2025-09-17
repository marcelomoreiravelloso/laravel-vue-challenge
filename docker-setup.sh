#!/bin/bash

# Laravel Vue Challenge - Complete Docker Setup Script

echo "🚀 Setting up Laravel Vue Challenge with Docker..."

# Stop any running containers
echo "🛑 Stopping any running containers..."
docker-compose down

# Create Laravel project using Docker
echo "🔨 Creating Laravel project..."
docker run --rm -v $(pwd):/app composer create-project laravel/laravel temp-laravel --prefer-dist

# Move Laravel files to current directory
echo "📁 Moving Laravel files..."
cp -r temp-laravel/* ./
cp temp-laravel/.* . 2>/dev/null || true
rm -rf temp-laravel

# Create Vue.js frontend structure
echo "🎨 Setting up Vue.js frontend..."
mkdir -p resources/js
cd resources/js

# Initialize Vue.js project
echo "📦 Initializing Vue.js project..."
docker run --rm -v $(pwd):/app node:18-alpine sh -c "
    cd /app &&
    npm create vue@latest . -- --yes &&
    npm install
"

cd ../..

# Copy environment file
echo "📝 Setting up environment..."
cp docker.env .env

# Build and start containers
echo "🔨 Building and starting Docker containers..."
docker-compose up -d --build

# Wait for services
echo "⏳ Waiting for services to be ready..."
sleep 15

# Generate application key
echo "🔑 Generating Laravel application key..."
docker-compose exec laravel php artisan key:generate --force

# Run migrations
echo "🗄️ Running database migrations..."
docker-compose exec laravel php artisan migrate --force

echo "✅ Setup complete!"
echo ""
echo "🌐 Services available at:"
echo "   - Laravel API: http://localhost:8000"
echo "   - Vue.js Frontend: http://localhost:5173"
echo "   - Nginx (optional): http://localhost:80"
echo ""
echo "📋 Useful commands:"
echo "   - View logs: docker-compose logs -f"
echo "   - Stop services: docker-compose down"
echo "   - Restart services: docker-compose restart"
echo "   - Access Laravel container: docker-compose exec laravel bash"
echo "   - Access Vue container: docker-compose exec vue sh"


