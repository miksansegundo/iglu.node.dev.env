# Use latest Node LTS (Boron)
FROM node:boron

RUN npm install -g yarn

# Create a non-root user
RUN groupadd -r nodejs \
   && useradd -m -r -g nodejs nodejs

USER nodejs

# Create the app folder inside the container
RUN mkdir -p /home/nodejs/app
WORKDIR /home/nodejs/app

# Cache node_modules
COPY package.json .
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
# docker build -t miguelsansegundo/iglu.node.dev.env:latest -t miguelsansegundo/iglu.node.dev.env:0.0.0 .

# Run the image
# docker run -it --rm --name iglu.node.dev.env miguelsansegundo/iglu.node.dev.env

# Show containers
# docker ps -a

# Show images
# docker images

# Remove containers
# docker rm <id>

# Remove images
# docker rmi <id|name>