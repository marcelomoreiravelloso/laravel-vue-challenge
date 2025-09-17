FROM node:20-alpine

# Set working directory
WORKDIR /app

# Install dependencies
RUN npm install -g @vue/cli @vue/cli-service-global

# Copy package files
COPY resources/js/package*.json ./

# Install project dependencies
RUN npm install

# Copy application code
COPY resources/js/ .

# Expose port 5173
EXPOSE 5173

# Start development server
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]

