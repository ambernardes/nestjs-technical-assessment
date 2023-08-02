# Use Node.js 14 (or any desired version)
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock) to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the NestJS app
RUN npm run build

# Start the NestJS app
CMD ["npm", "run", "start:prod"]
