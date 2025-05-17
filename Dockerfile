# Usa imagem com Node.js 20.11.1 e glibc >= 2.33 (via Debian Bookworm)
FROM node:20.11.1-bookworm

# Define diretório de trabalho
WORKDIR /app

# Copia os arquivos de dependência
COPY package*.json ./

# Instala dependências
RUN npm install

# Copia os arquivos da aplicação
COPY . .

# Expõe a porta do servidor (ajuste conforme necessário)
EXPOSE 3000

# Comando de inicialização
CMD ["npm", "start"]
