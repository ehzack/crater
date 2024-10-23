#!/bin/sh

docker exec crater-app-1 composer install --no-interaction --prefer-dist --optimize-autoloader

docker exec crater-app-1 php artisan storage:link || true
docker exec crater-app-1 php artisan key:generate --force
docker exec  crater-app-1   php artisan migrate --force
