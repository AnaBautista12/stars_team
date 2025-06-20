# Usa Node.js
FROM node:18

# Crea directorio de trabajo
WORKDIR /app

# Copia dependencias
COPY package*.json ./
RUN npm install

# Copia el resto del código
COPY . .

# Expone el puerto
EXPOSE 3000

# Comando de inicio
CMD ["node", "index.js"]
