# Quick Start Guide

Get your FontAwesome Pro self-hosted service running in minutes!

## Prerequisites

- Docker installed ([Get Docker](https://docs.docker.com/get-docker/))
- Docker Compose installed (usually comes with Docker Desktop)
- FontAwesome Pro 6.7.2 download package

## 5-Minute Setup

### Step 1: Get FontAwesome Pro Files

After purchasing and downloading FontAwesome Pro 6.7.2, extract the archive.

### Step 2: Create Directory

```bash
mkdir -p fontawesome
```

### Step 3: Copy Files

Copy the web files from your FontAwesome Pro download to the `fontawesome/` directory:

```bash
# From your FontAwesome Pro download location:
cp -r path/to/fontawesome-pro-6.7.2-web/css fontawesome/
cp -r path/to/fontawesome-pro-6.7.2-web/webfonts fontawesome/
cp -r path/to/fontawesome-pro-6.7.2-web/js fontawesome/    # Optional
```

Your structure should look like:
```
fontawesome/
├── css/
│   ├── all.min.css
│   ├── brands.min.css
│   ├── solid.min.css
│   └── ... (other CSS files)
└── webfonts/
    ├── fa-brands-400.woff2
    ├── fa-solid-900.woff2
    └── ... (other font files)
```

### Step 4: Start the Service

**Option A: Using the setup script (recommended)**
```bash
./setup.sh
```

**Option B: Manual start**
```bash
docker compose up -d
```

### Step 5: Verify

Open your browser: [http://localhost:8080](http://localhost:8080)

You should see the welcome page with working FontAwesome icons! 🎉

## Using in Your Projects

Add to your HTML `<head>`:

```html
<link rel="stylesheet" href="http://localhost:8080/fontawesome/css/all.min.css">
```

Use icons:

```html
<i class="fa-solid fa-house"></i>
<i class="fa-brands fa-github"></i>
```

## Common Issues

**Icons not showing?**
- Check that files are in `fontawesome/css/` and `fontawesome/webfonts/`
- Verify container is running: `docker ps`
- Check logs: `docker compose logs`

**Port 8080 already in use?**
- Edit `docker-compose.yml` and change `"8080:80"` to `"YOUR_PORT:80"`

**Need help?**
- See the full [README.md](README.md) for detailed documentation

## Next Steps

- Check out [example.html](example.html) for integration examples
- Configure custom domain (see README.md)
- Set up SSL/TLS with a reverse proxy
- Configure advanced options using `docker-compose.override.yml`

---

**Note:** Ensure you have a valid FontAwesome Pro license. This service is for authorized use only.
