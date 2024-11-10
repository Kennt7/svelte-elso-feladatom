# 1. lépés: használj egy Node.js alapú képet
FROM node:16-alpine3.11

# 2. lépés: állítsd be a munkakönyvtárat
WORKDIR /app

# 3. lépés: másold át a package.json és package-lock.json fájlokat
COPY package*.json ./

# 4. lépés: telepítsd a függőségeket
RUN npm install

# 5. lépés: másold át a teljes projektet
COPY . .

# 6. lépés: szolgáld ki az alkalmazást egy egyszerű webszerverrel
# A 'sirv-cli' csomag telepítése, amely egy egyszerű webszerver a Svelte alkalmazásokhoz
RUN npm install -g sirv-cli

# 7. lépés: add meg az alapértelmezett portot (5000)
EXPOSE 5173

# 8. lépés: indítsd el az alkalmazást
CMD ["npm","run","dev"]

