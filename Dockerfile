# Gunakan base image Nginx versi 1.18.0
FROM nginx:1.18.0

# Salin semua file dari folder "build" ke direktori "/var/www/html" di dalam kontainer
COPY build/* /var/www/html

# Salin file "default" ke direktori "/etc/nginx/sites-enabled" di dalam kontainer
COPY default /etc/nginx/sites-enabled
