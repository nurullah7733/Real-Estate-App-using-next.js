# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port that Next.js runs on
EXPOSE 3000

# Set the OpenSSL legacy provider
ENV NODE_OPTIONS=--openssl-legacy-provider

# Set the default command to run the development server
CMD ["npm", "run", "dev"]
