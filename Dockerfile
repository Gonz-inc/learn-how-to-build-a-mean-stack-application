# Using node V10
FROM node:10

# Create app directory 
WORKDIR /usr/src/lafs

# Install app dependencies
# while using a wild card to insure both package and package-lock .json files are copied

COPY package*.json ./

Run npm install 
# If build is for production 
# RUN npm ci --only=production

# bundle app source 
COPY . .

# Expose port 3000 outside container
EXPOSE 3000

# Command used to start application.
CMD ["node", "server/server.js"]
