FROM nginx:alpine

WORKDIR  /usr/share/nginx/html

COPY index.html .

RUN echo "Docker build completed"

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
