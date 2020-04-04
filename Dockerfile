FROM nginxinc/nginx-unprivileged:1.16-alpine

ADD assets/* /usr/share/nginx/html/
