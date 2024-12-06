# Use the official Node.js image as base
# Node.js is the run time
FROM node:18-alpine

#Setup the working directory in the container
WORKDIR /

#Copy the package.json & installation dependencies
COPY package*.json ./
RUN npm install

#Copy all of the app files
COPY . .

#Expose the port our app is running on
EXPOSE 4000

#Run our application with command
CMD ["node", "app.js"]