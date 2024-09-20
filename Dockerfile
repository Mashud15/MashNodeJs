# Use the official Nginx image as a base
FROM nginx:alpine

# Copy the content of the current directory to the Nginx HTML directory
COPY / /usr/share/nginx/html/


# Expose port 50000
EXPOSE 50000

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
