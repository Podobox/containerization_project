FROM nginx:1.25.3-alpine
WORKDIR /app
COPY ./dist/angular-16-crud/* /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80