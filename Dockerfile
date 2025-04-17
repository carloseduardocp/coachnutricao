FROM node:18

WORKDIR /app

# Instala o N8N globalmente e verifica se o binário foi instalado
RUN npm install -g n8n && which n8n

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=123456
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0

EXPOSE 5678

ENTRYPOINT ["n8n"]