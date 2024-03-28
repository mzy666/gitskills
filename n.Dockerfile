# 使用腾讯云镜像仓库的基础镜像
FROM nginx
 
# 安装nginx
RUN yum makecache fast && yum install -y nginx
 
# 复制nginx配置文件
COPY nginx.conf /etc/nginx/nginx.conf
 
# 将nginx的日志文件映射到容器的日志目录
RUN ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log
 
# 暴露nginx服务端口
EXPOSE 80
 
# 启动nginx服务
CMD ["nginx", "-g", "daemon off;"]
