# Use an official Node.js image as the base image
FROM node:alpine

# Install http-server
RUN npm install -g http-server

# Set the working directory
WORKDIR /app

# Copy the HTML file to the working directory
COPY index.html /app

# Expose port 8080
EXPOSE 8080

# Start http-server when the container launches
CMD ["http-server", "-p", "8080"]
