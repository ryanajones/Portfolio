# Base image
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy all project files
COPY . .

# Expose port for the development server
EXPOSE 3000

# Start the app
CMD ["npm", "run", "start"]
