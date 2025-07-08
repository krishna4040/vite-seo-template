FROM oven/bun:1.1 AS builder
WORKDIR /app
COPY bun.lockb package.json ./
RUN bun install
COPY . .
RUN bun run build

FROM nginx:stable-alpine AS production
RUN rm -rf /usr/share/nginx/html/*
COPY --from=builder /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
