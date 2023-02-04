FROM docker.io/nginx:latest

COPY static /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]