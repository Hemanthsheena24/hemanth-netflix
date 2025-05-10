# Use Node.js Alpine base image
FROM node:alpine

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json
COPY package.json package-lock.json /app/

# Install dependencies
RUN npm install

# Copy the source code (public, src, etc.)
COPY ./public /app/public
COPY ./src /app/src

# Expose the app's port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
