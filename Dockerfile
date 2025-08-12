FROM node:20

COPY dist ./dist
COPY node_modules ./node_modules
COPY package.json ./
COPY package-lock.json ./

EXPOSE 3000

CMD ["node", "dist/main.js"]