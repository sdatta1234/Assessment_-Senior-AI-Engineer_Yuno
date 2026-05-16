FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
COPY backend/package*.json ./backend/
COPY shared/package*.json ./shared/
COPY frontend/package*.json ./frontend/

RUN npm install --workspaces

COPY . .

EXPOSE 5173

CMD ["npm", "run", "dev:frontend"]
