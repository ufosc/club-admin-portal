FROM node:9.11.1-alpine

# Make the 'app' folder the current working directory
WORKDIR /app

# Copy both 'package.json' and 'package-lock.json' (if available)
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy project files and folders to the current working directory (i.e. 'app' folder)
COPY . .

# Open up the container's port 8080
EXPOSE 8080

# Run with live reloading
CMD npm run serve
