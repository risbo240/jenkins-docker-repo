FROM nginx:latest
RUN sed -i 's/nginx/xavki/g' /*.html
EXPOSE 8080
