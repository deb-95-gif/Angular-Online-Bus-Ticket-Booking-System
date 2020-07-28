
# stage 1
FROM node:12.18.3
WORKDIR /app
COPY . .
RUN npm install
RUN ng build --prod

# stage 2
FROM nginx:alpine
COPY --from=node /app/dist/Angular-Online-Bus-Ticket-Booking-System /usr/share/nginx/html
