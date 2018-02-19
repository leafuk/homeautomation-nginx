FROM tobi312/rpi-nginx:1.6
COPY nginx.conf /etc/nginx/nginx.conf
RUN useradd nginx