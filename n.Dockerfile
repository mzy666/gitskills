FROM nginx

COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

WORKDIR /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
