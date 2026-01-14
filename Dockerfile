# Usar uma imagem leve do Nginx
FROM nginx:alpine

# Remover os arquivos padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copiar os arquivos estáticos para o diretório de serviço do Nginx
COPY . /usr/share/nginx/html

# Expor a porta 80
EXPOSE 80

# Comando para rodar o Nginx no foreground
CMD ["nginx", "-g", "daemon off;"]
