FROM node:22-bullseye

WORKDIR /app

RUN npm i -g openclaw@latest

EXPOSE 18789

CMD ["openclaw", "gateway", "--port", "18789"]
