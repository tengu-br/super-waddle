FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf

RUN apk update\
    && apk add git -y

WORKDIR /etc/ 

RUN git clone https://github.com/Madureiradaniel/plugins.git