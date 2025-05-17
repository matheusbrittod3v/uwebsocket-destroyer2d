# Usa imagem Node.js 20.11.1 oficial (glibc, compatível com uWebSockets.js)
FROM node:20.11.1-bullseye

# Define diretório de trabalho no container
WORKDIR /app

# Copia os arquivos de dependência
COPY package*.json ./

# Instala as dependências do projeto
RUN npm install

# Copia todo o restante da aplicação
COPY . .

# Expõe a porta (ajuste se usar outra)
EXPOSE 3000

# Inicia o servidor
CMD ["npm", "start"]
