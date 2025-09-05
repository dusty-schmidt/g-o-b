#!/bin/bash

# GOB Docker Container Runner
# Stop and remove existing container if it exists
docker stop g-o-b 2>/dev/null
docker rm g-o-b 2>/dev/null

# Run the GOB container
echo "🚀 Starting GOB Docker container..."
docker run -d \
  --name g-o-b \
  -p 50080:80 \
  -p 50022:22 \
  -p 50090-50099:9000-9009 \
  --restart unless-stopped \
  g-o-b:latest

# Check if container started successfully
if [ $? -eq 0 ]; then
    echo "✅ GOB container started successfully!"
    echo "🌐 Web UI: http://localhost:50080"
    echo "🔧 SSH: localhost:50022"
    echo "📋 Container name: g-o-b"
    echo ""
    echo "To view logs: docker logs g-o-b"
    echo "To stop: docker stop g-o-b"
else
    echo "❌ Failed to start GOB container"
    exit 1
fi
