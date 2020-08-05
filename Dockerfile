
# base image
FROM node:12.18.3

# set working directory
WORKDIR /app

# install and cache app dependencies
COPY . .
RUN npm install
RUN npm run build --prod

CMD ["npm", "start"]
