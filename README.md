# Tax Calculator

## Project setup

### Without compose
```
Build: docker build -t tc-vue . 
Run: docker run -it -p 8000:80 --rm tc-vue
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
### Lints and fixes files
```
yarn run lint
```
