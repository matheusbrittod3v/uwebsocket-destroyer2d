# Usa imagem oficial do Node.js 20 (alpine = mais leve)
FROM node:20-alpine

# Define diretório de trabalho
WORKDIR /app

# Copia arquivos do projeto para o container
COPY package*.json ./

# Instala dependências
RUN npm install

# Copia o restante do código para o container
COPY . .

# Expõe a porta usada pela aplicação
EXPOSE 5588

# Comando para iniciar a aplicação
CMD ["npm", "start"]
