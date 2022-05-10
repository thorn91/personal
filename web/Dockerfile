FROM node:lts-alpine as build-stage
RUN sudo mkdir /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/package.json
RUN npm install
COPY . /usr/src/app
RUN npm run build     

# production stage
FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /usr/src/app/public/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
