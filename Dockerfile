FROM node:16.14-alpine3.14 as build

RUN mkdir /static
COPY static /static

FROM nginx:1.21.6-alpine

COPY --from=build /static /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
