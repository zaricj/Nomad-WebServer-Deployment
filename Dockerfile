FROM nginx:latest

COPY /templates/index.html /usr/share/nginx/html
COPY ./static /usr/share/nginx/html/static
COPY ./node_modules /usr/share/nginx/html/node_modules
COPY ./package-lock.json /usr/share/nginx/html
COPY ./package.json /usr/share/nginx/html
COPY ./tailwind.config.js /usr/share/nginx/html
