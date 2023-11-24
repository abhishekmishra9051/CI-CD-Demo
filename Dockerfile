# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the required files into the container
COPY . .

# Set environment variables
ENV DATABASE_HOST localhost
ENV DATABASE_PORT 5432
ENV DATABASE_NAME strapi-db
ENV DATABASE_USERNAME abhi
ENV DATABASE_PASSWORD root

# Install Strapi globally via npm (if not already installed)
RUN npm install strapi@latest -g

# Install project dependencies
RUN npm install

# Expose the default Strapi port
EXPOSE 1337

# Set the command to start Strapi
CMD ["npm", "run", "start"]
