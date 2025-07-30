# ---- Build Stage ----
FROM node:14 AS build

WORKDIR /usr/src/app

COPY package.json ./
COPY package-lock.json ./
RUN npm install

COPY backend ./backend
COPY frontend ./frontend

# ---- Production Stage ----
FROM node:14-slim

WORKDIR /usr/src/app

# Copy only the necessary files from the build stage
COPY --from=build /usr/src/app/backend ./backend
COPY --from=build /usr/src/app/frontend ./frontend
COPY --from=build /usr/src/app/node_modules ./node_modules
COPY package.json ./

EXPOSE 3000

CMD ["node", "backend/index.js"]