# Use the official nginx image as base
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy all static files to the nginx html directory
COPY . .

# Expose port 80
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"] 