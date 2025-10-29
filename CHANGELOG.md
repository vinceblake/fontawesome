# Changelog

All notable changes to this project will be documented in this file.

## [1.0.0] - 2025-10-29

### Added
- Initial release of FontAwesome Pro self-hosted service
- Docker-based nginx service for serving FontAwesome Pro 6.7.2
- Docker Compose configuration for easy deployment
- CORS support for cross-origin requests
- Caching headers for optimal performance
- Welcome page (index.html) with usage instructions and icon examples
- Integration example (example.html) demonstrating icon usage
- Comprehensive README with setup and usage instructions
- Setup script (setup.sh) for automated configuration
- .gitignore to exclude FontAwesome Pro licensed files
- nginx configuration optimized for static asset serving
- Docker Compose override example for advanced configurations

### Features
- Serves all FontAwesome Pro 6.7.2 styles (Solid, Regular, Light, Thin, Duotone, Brands)
- Configurable port (default: 8080)
- Auto-restart on failure
- Read-only volume mounting for security
- Alpine Linux base for minimal image size
- Health check support (via override file)

### Security
- Read-only volume mounting for FontAwesome files
- No FontAwesome Pro files included in repository (license compliance)
- CORS headers properly configured
