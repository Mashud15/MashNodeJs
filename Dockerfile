# Use the official Node.js image from Docker Hub
FROM node:14-alpine

# Create and set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the server.js file
COPY server.js ./

# Expose port 50000
EXPOSE 5000

# Start the Node.js application
CMD ["npm", "start"]
