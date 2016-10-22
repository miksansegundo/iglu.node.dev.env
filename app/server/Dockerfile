# Use latest Node LTS (Boron)
FROM node:6.9.1

# Dependencies & Create a non-root user
RUN npm install -g yarn \
 && npm install -g mocha \
 && npm install -g nodemon \
 && npm install -g standard \
 && groupadd -r nodejs && useradd -m -r -g nodejs nodejs

USER nodejs

# Create the app folder inside the container
RUN mkdir -p /home/nodejs/app

# Install & cache node_modules
WORKDIR /home/nodejs/app
COPY ./package.json .
RUN npm install

# No install development dependencies
# RUN npm install --production

# Copy the app inside the container
COPY . .

# One process by container
# ADD https://github.com/Yelp/dumb-init/releases/download/v1.1.1/dumb-init_1.1.1_amd64 /usr/local/bin/dumb-init
# RUN chmod +x /usr/local/bin/dumb-init

# CMD ["dumb-init", "node", "index.js"]

# Application port
EXPOSE 8888

CMD ["npm", "start"]

# COMMANDS

# Create the container
# docker build -t miguelsansegundo/iglu.node.dev.env:latest -t iglu/node.dev.env:0.0.0 .

# Run the image
# docker run --name server.iglu -p 8888:8888 -e "NODE_ENV=development" --rm iglu/node.dev.env

# Pass command
# docker run --rm iglu/iglu.node.dev.env /bin/bash -c 'npm test'

# Access the container command line
# docker exec -it iglu.node.dev.env /bin/bash

# Show containers
# docker ps -a

# Show images
# docker images

# Remove containers
# docker rm <id>

# Remove images
# docker rmi -f <id|name>

# Print app output
# docker logs <id|name>