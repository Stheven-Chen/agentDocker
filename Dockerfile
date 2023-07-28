# Gunakan base image Nginx dari repositori resmi Docker Hub
FROM nginx:1.18.0

# Salin file konfigurasi Nginx dari host ke dalam kontainer
COPY default /etc/nginx/sites-enabled/default

# Salin seluruh isi folder "build" ke direktori "/var/www/html" di dalam kontainer
COPY build /var/www/html/
