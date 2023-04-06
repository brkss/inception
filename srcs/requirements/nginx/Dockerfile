FROM alpine:3.15

RUN apk update && apk add --no-cache nginx 

COPY ./conf /etc/nginx/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
