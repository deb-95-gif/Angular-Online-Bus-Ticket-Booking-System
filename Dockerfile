
# base image
FROM node:12.18.3-stretch

# set working directory
WORKDIR /app

# install and cache app dependencies
COPY . .
RUN npm install
RUN npm run build --prod

EXPOSE 4200
CMD ["npm", "start"]
