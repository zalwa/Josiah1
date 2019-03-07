FROM nginx:alpine
COPY . /usr/share/nginx/html
EXPOSE 80 6139
CMD

