FROM node:alpine 

WORKDIR /usr/app

# The base image- alphine images are lightweight and not including extra libraries

COPY ./package.json ./
#copying all the files fron current working dir. to container


RUN npm install


COPY ./ ./

CMD ["npm","start"]