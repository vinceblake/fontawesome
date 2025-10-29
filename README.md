# FontAwesome Pro Self-Hosted Service

A Docker-based service to host FontAwesome Pro 6.7.2 files, allowing you to serve FontAwesome assets from your own infrastructure instead of relying on external CDNs.

## 🚀 Quick Start

### Prerequisites
- Docker and Docker Compose installed
- FontAwesome Pro 6.7.2 download package (purchased from FontAwesome)

### Setup Instructions

1. **Extract your FontAwesome Pro files**
   
   After downloading FontAwesome Pro 6.7.2, extract the package and locate the web fonts directory.

2. **Create the fontawesome directory**
   
   ```bash
   mkdir -p fontawesome
   ```

3. **Copy FontAwesome files to the project**
   
   Copy the contents of your FontAwesome Pro package to the `fontawesome/` directory. The structure should look like:
   
   ```
   fontawesome/
   ├── css/
   │   ├── all.min.css
   │   ├── brands.min.css
   │   ├── regular.min.css
   │   ├── solid.min.css
   │   ├── light.min.css
   │   └── ... (other CSS files)
   ├── webfonts/
   │   ├── fa-brands-400.woff2
   │   ├── fa-regular-400.woff2
   │   ├── fa-solid-900.woff2
   │   └── ... (other font files)
   └── js/
       └── ... (JavaScript files, if needed)
   ```

4. **Start the service**
   
   ```bash
   docker-compose up -d
   ```

5. **Verify the service is running**
   
   Open your browser and navigate to: `http://localhost:8080`
   
   You should see a welcome page with information about the service and example icons.

## 📖 Usage

### In HTML Projects

Add the following to your HTML `<head>` section:

```html
<!-- Include all FontAwesome styles -->
<link rel="stylesheet" href="http://localhost:8080/fontawesome/css/all.min.css">

<!-- Or include specific styles -->
<link rel="stylesheet" href="http://localhost:8080/fontawesome/css/solid.min.css">
<link rel="stylesheet" href="http://localhost:8080/fontawesome/css/brands.min.css">
```

Then use icons in your HTML:

```html
<i class="fa-solid fa-house"></i>
<i class="fa-brands fa-github"></i>
<i class="fa-regular fa-star"></i>
```

### Available Endpoints

- **All styles:** `http://localhost:8080/fontawesome/css/all.min.css`
- **Solid:** `http://localhost:8080/fontawesome/css/solid.min.css`
- **Regular:** `http://localhost:8080/fontawesome/css/regular.min.css`
- **Light:** `http://localhost:8080/fontawesome/css/light.min.css`
- **Thin:** `http://localhost:8080/fontawesome/css/thin.min.css`
- **Duotone:** `http://localhost:8080/fontawesome/css/duotone.min.css`
- **Brands:** `http://localhost:8080/fontawesome/css/brands.min.css`

### In Production

For production deployment, replace `localhost:8080` with your actual domain or IP address:

```html
<link rel="stylesheet" href="http://your-domain.com:8080/fontawesome/css/all.min.css">
```

Or configure a reverse proxy (nginx, Apache, etc.) to serve it on port 80/443.

## 🔧 Configuration

### Changing the Port

Edit `docker-compose.yml` and modify the ports section:

```yaml
ports:
  - "YOUR_PORT:80"  # Change YOUR_PORT to your desired port
```

### Using a Custom Domain

If you're using a custom domain, update the nginx configuration or use a reverse proxy.

### Environment Variables

The following environment variables can be configured in `docker-compose.yml`:

- `NGINX_HOST`: The hostname (default: localhost)
- `NGINX_PORT`: The internal nginx port (default: 80)

## 🛠️ Management Commands

### Start the service
```bash
docker-compose up -d
```

### Stop the service
```bash
docker-compose down
```

### View logs
```bash
docker-compose logs -f
```

### Restart the service
```bash
docker-compose restart
```

### Rebuild the container
```bash
docker-compose build --no-cache
docker-compose up -d
```

## 🌐 CORS Support

The service is configured with CORS headers to allow cross-origin requests, making it easy to use from different domains and applications.

## 📦 What's Included

- **Nginx-based web server** (Alpine Linux for minimal size)
- **Docker Compose configuration** for easy deployment
- **CORS support** for cross-origin requests
- **Caching headers** for optimal performance
- **Welcome page** with usage instructions and icon examples

## ⚠️ Important Notes

1. **License Compliance:** Ensure you have a valid FontAwesome Pro license. This service is for authorized use only.

2. **Security:** The `fontawesome/` directory is excluded from git (via `.gitignore`) to prevent accidental sharing of licensed files.

3. **Updates:** When updating FontAwesome, simply replace the files in the `fontawesome/` directory and restart the service.

## 🐛 Troubleshooting

### Icons not displaying
- Verify FontAwesome files are in the `fontawesome/` directory
- Check browser console for 404 errors
- Ensure the container is running: `docker ps`

### Port already in use
- Change the port in `docker-compose.yml`
- Or stop the service using that port

### CORS errors
- The service includes CORS headers by default
- If issues persist, check your browser's console for specific error messages

## 📄 License

This Docker service configuration is provided as-is. FontAwesome Pro requires a valid license from fontawesome.com.

## 🤝 Contributing

Feel free to submit issues or pull requests to improve this service configuration.
