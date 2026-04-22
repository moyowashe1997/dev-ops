#getting the base image
FROM node:25-alpine3.22
#setting up working directory
WORKDIR /scr/app
#coping the package files to container working directory
COPY package*.json ./
#installing all the packages on the container using npm
RUN npm install
#copying the rest of the files to the container working directory
COPY . .
#exposing the port that the container should listen on
EXPOSE 3000
#Command to run the application inside the container
CMD [ "npm","start" ]
