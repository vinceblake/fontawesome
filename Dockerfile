FROM nginx:alpine

# Copy nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Create directory for fontawesome files
RUN mkdir -p /usr/share/nginx/html/fontawesome

# Copy index page
COPY index.html /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
