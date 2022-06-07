# define a imagem base
FROM debian:latest
# define o mantenedor da imagem
LABEL maintainer="pedroA"
# Atualiza a imagem com os pacotes
RUN apt-get update && apt-get upgrade -y
# Instala o NGINX para testar
RUN apt-get install nginx -y
# Comando para iniciar o NGINX no Container
COPY . /usr/share/nginx/index.html
# Expoe a porta 80
EXPOSE 80
