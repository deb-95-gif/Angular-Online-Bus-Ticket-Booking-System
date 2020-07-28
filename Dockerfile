# install and cache app dependencies

COPY . .
RUN npm install
RUN ng build --prod

FROM nginx:1.13.3-alpine
COPY dist/Angular-Online-Bus-Ticket-Booking-System
 /usr/share/nginx/html
