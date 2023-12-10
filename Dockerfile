# Use the official Node.js image as the base image
FROM node:20.10.0-alpine3.18

# Set the working directory in the container
WORKDIR /app

COPY package.json .
COPY hardhat.config.js .
# Install Hardhat globally
RUN npm install

# Expose the necessary port for Hardhat node (default is 8545)
EXPOSE 8545

# Run Hardhat node at localhost
CMD ["npm", "run", "start"]
