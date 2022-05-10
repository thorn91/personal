FROM node:lts-alpine as build-stage
RUN mkdir -p /home/ubuntu/source/app
WORKDIR /home/ubuntu/source/app
COPY package.json /home/ubuntu/source/app/package.json
RUN npm install
COPY . /home/ubuntu/source/app
RUN npm run build     

# production stage
FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /home/ubuntu/source/app/public/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
