# Stage 1: Compile and Build angular codebase

# Use official node image as the base image
FROM node:16-alpine3.12

# Set the working directory
WORKDIR /usr/src/app

# Add the source code to app
COPY ./ ./

# Install all the dependencies
RUN npm install --legacy-peer-deps

# Stage 2: Serve app with nginx server

# Expose port 80
EXPOSE 4200

CMD ["npm", "start"]
