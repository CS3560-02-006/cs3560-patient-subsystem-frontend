FROM node:alpine
ENV NODE_ENV=development

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]
RUN npm install
RUN npm audit fix
COPY . .
CMD ["npm" "start"]