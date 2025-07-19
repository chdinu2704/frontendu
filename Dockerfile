# Base image with Nginx
FROM nginx:alpine

WORKDIR /usr/share/nginx/html/

# Copy Angular build files to Nginx's public folder
COPY dist/demoapp/* .

# Expose default port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
