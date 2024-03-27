FROM nginx

EXPOSE 80

WORKDIR /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
