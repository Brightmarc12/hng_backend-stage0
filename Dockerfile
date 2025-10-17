# Use official Node LTS
FROM node:20-alpine

# Create app directory
WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./
RUN npm ci --only=production || npm install --only=production

# Copy source
COPY . .

# Expose port (Back4App can map dynamically)
EXPOSE 3000

# Environment defaults (can be overridden by platform)
ENV NODE_ENV=production

# Start the server
CMD ["node", "index.js"]
