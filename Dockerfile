FROM node:20

COPY package.json ./
COPY package-lock.json ./
RUN npm install --production

COPY dist ./dist

EXPOSE 3000

CMD ["node", "dist/main.js"]