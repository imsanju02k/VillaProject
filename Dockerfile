#use a base image
FROM node:14-alpine

#set the working directory inside the container
WORKDIR /app

#copy all files from the project directory to the working directory
COPY . .

#install http-server globally
RUN npm install -g http-server

#expose the port your app runs on
EXPOSE 6000

#define the command to run app using http-server
CMD ["http-server","-p","6000"]
