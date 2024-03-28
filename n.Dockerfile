# 使用官方提供的 Nginx 基础镜像作为起点
FROM nginx
 
# 将本地的配置文件复制到容器中的指定位置
COPY ./nginx.conf /etc/nginx/nginx.conf
 
# 设置工作目录
WORKDIR /usr/share/nginx/html
 
# 将本地的网站内容复制到容器中的指定位置
COPY ./website/* .
 
# 开放80端口以接收HTTP流量
EXPOSE 80
 
# 运行Nginx服务器
CMD ["nginx", "-g", "daemon off;"]
