FROM nginx:alpine
LABEL maintainer="mekamanojreddy mekamanojreddy1003@gmail.com"
LABEL description="Nginx container serving static websie"
LABEL version="1.0"
RUN rm -rf /usr/share/nginx/html/*
COPY . /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]