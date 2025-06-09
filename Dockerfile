FROM nginx:latest
COPY nginx.conf /etc/nginx/templates/nginx.conf.template
RUN apt-get update && apt-get install -y gettext-base
CMD ["sh", "-c", "envsubst '${USER_SERVICE_HOST} ${APP_SERVICE_HOST}' < /etc/nginx/templates/nginx.conf.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"]