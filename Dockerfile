FROM ubuntu:latest
RUN apt-get install -y nginx \
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templetes/download/pages254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/nginx", "-D", "FOREGROUND"]
EXPOSE 80 22
