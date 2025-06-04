FROM node:alpine

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./

# Se utiliza cuando quieres ejeccutar un comando mientras se construye la imágen
RUN npm install
COPY index.js ./
EXPOSE 3000

# Se utiliza para ejecutar un comando cuando se levanta el contenedor
CMD ["node", "index.js"]
