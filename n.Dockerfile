FROM nginx

COPY ./openinstall/conf/openinstall.conf /etc/nginx/conf.d

COPY ./openinstall/web /opt/openinstall
RUN  rm -rf /etc/nginx/conf.d/default.conf
EXPOSE 80

WORKDIR /opt/openinstall

CMD ["nginx", "-g", "daemon off;"]
