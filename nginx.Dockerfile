FROM nginx

COPY ./openinstall/conf/nginx.conf /etc/nginx/conf.d

EXPOSE 80

WORKDIR /opt/openinstall

CMD ["nginx", "-g", "daemon off;"]
