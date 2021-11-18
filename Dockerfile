
FROM nginx:latest
RUN sed -i 's/nginx/brilland/g' /usr/share/nginx/html/index.html
EXPOSE 80
