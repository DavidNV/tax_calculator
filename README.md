# Tax Calculator

## Project setup

### Without compose
```
Build: docker build -t tc-vue . 
Run: docker run -it -p 8000:80 --rm dockerize-vue
```

### With compose
```
docker-compose up --build
```
## To Update depedencies

```
docker-compose exec frontend yarn add <package-name>

or
docker-compose run client sh

(Inside container)

$root@bfabb16523ce yarn add <package-name>
```
## Ideas and gurus

[https://medium.com/@jwdobken/vue-with-docker-initialize-develop-and-build-51fad21ad5e6](Vue with Docker)
[https://hinsencamp.com/article/vue-pwa/](Vue-PWA)

### Lints and fixes files
```
yarn run lint
```
