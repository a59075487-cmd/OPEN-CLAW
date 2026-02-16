FROM node:22-bullseye

WORKDIR /app

# Dependencias necesarias para node-llama-cpp / build nativo
RUN apt-get update && apt-get install -y \
cmake \
build-essential \
python3 \
git \
&& rm -rf /var/lib/apt/lists/*

RUN npm i -g openclaw@latest

EXPOSE 18789

CMD ["openclaw", "gateway", "--port", "18789"]

