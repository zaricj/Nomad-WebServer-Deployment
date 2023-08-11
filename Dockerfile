FROM nginx

COPY /templates/index.html /usr/share/nginx/html

WORKDIR /app
CMD ["/usr/share/nginx/html","nginx"]