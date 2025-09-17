#!/bin/bash

# Laravel Vue Challenge - Docker Start Script

echo "🚀 Starting Laravel Vue Challenge with Docker..."

# Copy environment file if it doesn't exist
if [ ! -f .env ]; then
    echo "📝 Creating .env file from docker.env..."
    cp docker.env .env
fi

# Build and start containers
echo "🔨 Building and starting Docker containers..."
docker-compose up -d --build

# Wait for services to be ready
echo "⏳ Waiting for services to be ready..."
sleep 10

# Generate application key if not set
echo "🔑 Generating Laravel application key..."
docker-compose exec laravel php artisan key:generate --force

# Run migrations
echo "🗄️ Running database migrations..."
docker-compose exec laravel php artisan migrate --force

# Install frontend dependencies
echo "📦 Installing frontend dependencies..."
docker-compose exec vue npm install

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



