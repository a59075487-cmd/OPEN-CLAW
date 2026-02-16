FROM node:22-bullseye

WORKDIR /app

# Dependencias necesarias para node-llama-cpp / build nativo
RUN apt-get update && apt-get install -y \
cmake \
build-essential \
python3 \
git \
&& rm -rf /var/lib/apt/lists/*

RUN npm i -g openclaw@latest --ignore-scripts --omit=optional

EXPOSE 18789

CMD ["sh", "-c", "openclaw gateway --port ${PORT:-18789} --allow-unconfigured"]

