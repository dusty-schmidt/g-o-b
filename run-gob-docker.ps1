# GOB Docker Container Runner for Windows
# Stop and remove existing container if it exists
Write-Host "🛑 Stopping existing GOB container..." -ForegroundColor Yellow
docker stop g-o-b 2>$null
docker rm g-o-b 2>$null

# Run the GOB container
Write-Host "🚀 Starting GOB Docker container..." -ForegroundColor Green
docker run -d `
  --name g-o-b `
  -p 50080:80 `
  -p 50022:22 `
  -p 50090-50099:9000-9009 `
  --restart unless-stopped `
  g-o-b:latest

# Check if container started successfully
if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ GOB container started successfully!" -ForegroundColor Green
    Write-Host "🌐 Web UI: http://localhost:50080" -ForegroundColor Cyan
    Write-Host "🔧 SSH: localhost:50022" -ForegroundColor Cyan  
    Write-Host "📋 Container name: g-o-b" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "To view logs: docker logs g-o-b" -ForegroundColor Gray
    Write-Host "To stop: docker stop g-o-b" -ForegroundColor Gray
} else {
    Write-Host "❌ Failed to start GOB container" -ForegroundColor Red
    exit 1
}

# Optionally open browser
$openBrowser = Read-Host "Open GOB web interface in browser? (y/N)"
if ($openBrowser -eq "y" -or $openBrowser -eq "Y") {
    Start-Process "http://localhost:50080"
}
