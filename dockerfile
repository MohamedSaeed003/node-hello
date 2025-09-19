# Use official Node.js runtime
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package.json first (better for caching layers)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Expose app port
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
