FROM docker.io/nginx:latest

COPY static /usr/share/nginx/html

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]