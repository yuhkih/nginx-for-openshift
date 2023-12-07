FROM redhat/ubi8
RUN yum install -y nginx
COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 8080
CMD ["-g","daemon off;"]
ENTRYPOINT ["nginx"]
