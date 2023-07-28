# Gunakan base image Nginx dari repositori resmi Docker Hub
FROM nginx:1.15.8-alpine

# Salin file konfigurasi Nginx dari host ke dalam kontainer
COPY ./nginx.conf /etc/nginx/sites-enabled/nginx.conf

# Salin seluruh isi folder "build" ke direktori "/var/www/html" di dalam kontainer
COPY build/* /usr/share/nginx/html
