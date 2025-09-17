#!/bin/bash

# Laravel Vue Challenge - Docker Stop Script

echo "🛑 Stopping Laravel Vue Challenge Docker containers..."

# Stop and remove containers
docker-compose down

echo "✅ Docker containers stopped and removed!"
echo ""
echo "💡 To start again, run: ./docker-start.sh"



