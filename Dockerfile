# Dockerfile para una aplicación web estática (HTML, CSS, JS)
# Utiliza Nginx para servir los archivos

FROM nginx:alpine

# Copia los archivos de la app al directorio de Nginx
COPY . /usr/share/nginx/html

# Copia la configuración personalizada de Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Expone el puerto 5679
EXPOSE 5679

# Comando por defecto para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]
