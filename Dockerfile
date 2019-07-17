# development stage

FROM node:11.1-alpine as dev-stage
WORKDIR /app
RUN apk add curl
RUN apk add vim
RUN curl --compressed -o- -L https://yarnpkg.com/install.sh | sh
COPY package*.json ./
COPY . .

# build stage

FROM dev-stage as build-stage
RUN yarn build

# production stage
FROM nginx:1.15.7-alpine as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
