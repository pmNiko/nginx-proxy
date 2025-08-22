FROM nginx:alpine

# Copiar configuración principal de nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Copiar toda la estructura de conf.d (incluyendo locations)
COPY conf.d/ /etc/nginx/conf.d/

# Copiar archivos HTML estáticos y de mantenimiento
COPY html/ /usr/share/nginx/html/

# Exponer el puerto 80
EXPOSE 80