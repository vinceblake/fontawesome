#!/bin/bash

# FontAwesome Pro Self-Hosted Service Setup Script
# This script helps you set up the FontAwesome Pro service

set -e

echo "=================================="
echo "FontAwesome Pro Setup"
echo "=================================="
echo ""

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "❌ Docker is not installed. Please install Docker first."
    echo "   Visit: https://docs.docker.com/get-docker/"
    exit 1
fi

# Check if Docker Compose is installed
if ! command -v docker-compose &> /dev/null; then
    echo "❌ Docker Compose is not installed. Please install Docker Compose first."
    echo "   Visit: https://docs.docker.com/compose/install/"
    exit 1
fi

echo "✓ Docker is installed"
echo "✓ Docker Compose is installed"
echo ""

# Check if fontawesome directory exists
if [ ! -d "fontawesome" ]; then
    echo "📁 Creating fontawesome directory..."
    mkdir -p fontawesome
    echo "✓ Created fontawesome directory"
    echo ""
    echo "⚠️  NEXT STEPS:"
    echo "   1. Extract your FontAwesome Pro 6.7.2 download"
    echo "   2. Copy the contents to the ./fontawesome/ directory"
    echo "   3. The structure should be:"
    echo "      fontawesome/"
    echo "      ├── css/"
    echo "      ├── webfonts/"
    echo "      └── js/"
    echo ""
    echo "   Then run this script again to start the service."
    exit 0
fi

# Check if fontawesome directory has files
if [ -z "$(ls -A fontawesome)" ]; then
    echo "⚠️  The fontawesome directory is empty!"
    echo ""
    echo "   Please:"
    echo "   1. Extract your FontAwesome Pro 6.7.2 download"
    echo "   2. Copy the contents to the ./fontawesome/ directory"
    echo ""
    exit 1
fi

# Check for required files
if [ ! -d "fontawesome/css" ] || [ ! -d "fontawesome/webfonts" ]; then
    echo "⚠️  Required directories not found!"
    echo ""
    echo "   Make sure your fontawesome directory contains:"
    echo "   - css/ (with .css files)"
    echo "   - webfonts/ (with font files)"
    echo ""
    exit 1
fi

echo "✓ FontAwesome files found"
echo ""

# Build and start the service
echo "🚀 Building and starting the service..."
docker-compose up -d --build

if [ $? -eq 0 ]; then
    echo ""
    echo "=================================="
    echo "✅ Success!"
    echo "=================================="
    echo ""
    echo "Your FontAwesome Pro service is now running!"
    echo ""
    echo "📍 Access the service at: http://localhost:8080"
    echo ""
    echo "📚 Useful commands:"
    echo "   • View logs:          docker-compose logs -f"
    echo "   • Stop service:       docker-compose down"
    echo "   • Restart service:    docker-compose restart"
    echo ""
else
    echo ""
    echo "❌ Failed to start the service"
    echo "   Check the error messages above for details"
    exit 1
fi
