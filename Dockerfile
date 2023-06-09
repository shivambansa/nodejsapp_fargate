FROM node:16

# Create app directory
WORKDIR /newworld

# Install app dependencies
COPY package*.json ./
RUN npm install
RUN npm install -g pm2 serve

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "npm", "start", "app.js" ]
