FROM adminer:latest
RUN sed -i 's/adminer/xavki/g' /*.html
EXPOSE 90