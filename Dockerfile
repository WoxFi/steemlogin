# Use a Node.js base image
FROM node:14

# Install Python and other system dependencies
RUN apt-get update && apt-get install -y python

# Set the working directory inside the container
WORKDIR /home/app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Remove lock 
#RUN rm -rf node_modules package-lock.json

# Install VUE cli-service
#RUN npm i @vue/cli-service

# Install dependencies
#RUN npm install

# Copy the entire application directory to the container
COPY . .

# Expose the port your application runs on
EXPOSE 8080

# Start the application
#RUN npm run serve
