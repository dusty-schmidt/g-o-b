# GOB (General Orchestrator Bot)

A customized fork of Agent Zero focused on orchestration and task management.

## 🚀 Quick Start

### Windows Users:
```powershell
cd C:\Users\JANET\dusty\g-o-b
.\run-gob-docker.ps1
```

### Linux Users:
```bash
cd ~/Development/g-o-b
docker start g-o-b-dev
```

**Access GOB**: http://localhost:8080 (Windows) or http://localhost:50080 (Linux)

## 📚 Documentation

| Platform | Setup Guide | Purpose |
|----------|-------------|---------|
| **Windows** | [docs/WINDOWS_SETUP.md](docs/WINDOWS_SETUP.md) | Complete Windows setup and usage |
| **Linux** | [docs/DEBIAN_SETUP.md](docs/DEBIAN_SETUP.md) | Debian/Ubuntu setup guide |
| **Docker** | [docs/DOCKER_ARCHITECTURE.md](docs/DOCKER_ARCHITECTURE.md) | Docker build system explanation |
| **Quick Start** | [docs/README_SETUP.md](docs/README_SETUP.md) | Navigation hub and common tasks |

## 🔧 Management Scripts

| Script | Purpose |
|--------|---------|
| `run-gob-docker.ps1` | Windows: Start/restart GOB |
| `gob-status.ps1` | Windows: Check container status |
| `docker-cleanup.ps1` | Windows: Clean up Docker resources |

## 🎯 Current Configuration

- **Windows**: Port 8080 (HTTP), 2222 (SSH)
- **Linux**: Port 50080 (HTTP), 50022 (SSH)
- **Auto-start**: Enabled via Docker Desktop
- **Volume Mount**: Live code editing

## 📂 Project Structure

```
g-o-b/
├── docs/                    # Documentation
│   ├── WINDOWS_SETUP.md     # Windows setup guide
│   ├── DEBIAN_SETUP.md      # Linux setup guide  
│   ├── DOCKER_ARCHITECTURE.md # Docker system docs
│   ├── README_SETUP.md      # Quick reference
│   └── a0readme/            # Original Agent Zero reference docs
├── docker/                  # Docker configuration
│   ├── base/               # Base image files
│   └── run/                # Runtime configuration  
├── python/                 # Python application code
├── run-gob-docker.ps1      # Windows startup script
├── gob-status.ps1          # Windows status checker
├── docker-cleanup.ps1      # Windows cleanup utility
├── DockerfileLocal         # Main Docker build file
└── .env                    # Configuration and API keys
```

## 🛠️ Development Workflow

1. **Make changes** to code files
2. **Restart container** to apply changes:
   - Windows: `docker restart g-o-b`
   - Linux: `docker restart g-o-b-dev`
3. **Test** at your local URL
4. **Commit** when ready: `git add . && git commit -m "description"`

## 🆘 Need Help?

1. **Windows Users**: See [docs/WINDOWS_SETUP.md](docs/WINDOWS_SETUP.md)
2. **Linux Users**: See [docs/DEBIAN_SETUP.md](docs/DEBIAN_SETUP.md)
3. **Docker Issues**: See [docs/DOCKER_ARCHITECTURE.md](docs/DOCKER_ARCHITECTURE.md)
4. **Quick Commands**: See [docs/README_SETUP.md](docs/README_SETUP.md)

---

**Version**: Custom GOB Implementation  
**Base**: Agent Zero Fork  
**Platform**: Windows/Linux with Docker
