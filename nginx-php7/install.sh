#!/bin/bash



sudo mkdir docker-images
sudo git clone https://github.com/dialog-tech/php7-nginx.git
sudo docker build -t richarvey/nginx-php-fpm:latest .