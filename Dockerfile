FROM nginx:1.25-alpine

# Copiar configuraciones personalizadas
COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d/ /etc/nginx/conf.d/

# Copiar página de mantenimiento
COPY maintenance/ /usr/share/nginx/html/maintenance/

# La validación se hará en runtime cuando los servicios estén disponibles

# Exponer el puerto 80
EXPOSE 80

# El comando por defecto ya está definido en la imagen base de nginx