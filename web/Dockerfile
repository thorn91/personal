### 1: Build ###
# Look for a local cache of node or pull it from DockerHub
FROM node:latest as build
# Create and set our working directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
# Caching trick that copies all node_modules to PATH var
ENV PATH /usr/src/app/node_modules/.bin:$PATH
# Copy pacakge.json and install dependencies
COPY package.json /usr/src/app/package.json
RUN npm install
# Copy the rest of the application files
COPY . /usr/src/app
# Creates static app
RUN npm run build

### 2: nginx ###
FROM nginx:stable-alpine
COPY --from=build /usr/src/app/public/ /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
