FROM node:18.16.0-buster

WORKDIR /code

COPY package.json package.json
COPY package-lock.json package-lock.json 
RUN npm install styled-components
RUN npm install --save react-beautiful-dnd --legacy-peer-deps

RUN npm install 

COPY . .

CMD ["npm", "run", "start"]



