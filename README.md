# Laravel 8 / Vue SPA Local Development Environment with Docker Compose

1. Install Docker for MacBook Air/Pro M1 (https://docs.docker.com/desktop/mac/apple-silicon) or Windows 10/11 WSL/Hyper-V (https://docs.docker.com/desktop/windows/install)
2. Clone laravel8-vue-spa-docker to your local computer
3. Clone and install your app inside /laravel8-vue-docker/src folder
4. Open the Docker Environment Variable file /laravel8-vue-spa-docker/.env and configure your docker container. (Optional)
```
# Container Name
CONTAINER_NAME=laravel-vue-spa

# Application
API_NAME=api
VUE_APP_NAME=vue-app 

# Database Connection
DB_PORT=3306
DB_DATABASE=laravue
DB_USERNAME=root
DB_PASSWORD=secret
DB_PORT=3306

# MySQL Database Manager
PHP_MY_ADMIN_PORT=9080

# API Web Server
API_PORT=8081

# Vue App
VUE_APP_PORT=8080

# PHP Port
PHP_PORT=9001

# Redis 
REDIS_PORT=6382
```
5. Update your Laravel 8 MySQL connection in .env file to match with the docker env.
```
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=app
DB_USERNAME=root
DB_PASSWORD=secret
```
6. Run `docker-compose build` (to build your laravel docker development environment)
7. Run `docker-compose up -d` (start docker container)
8. Go to src/api folder and run `docker-compose run composer install` (to install the laravel dependency packages)
9. Run `docker-compose run artisan migrate --seed` (migrate the database)
10. Go to src/vue-app and run `docker-compose run npm install` (install the vue dependecy packages)

## Terminal Commands:

- To build or rebuild your docker container
```
docker-compose build
```
- To start your development environment container
```
docker-compose up -d
```
- To end or terminate your development environment container
```
docker-compose down
```
- To run php artisan
```
docker-compose run artisan make:controller TestController
```
- To run composer commands
```
docker-compose run composer install
```
- To run npm commands
```
docker-compose run npm install
```
