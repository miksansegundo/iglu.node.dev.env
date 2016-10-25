# Use latest Node LTS (Boron)
FROM node:6.9.1

# Dependencies & Create a non-root user
RUN npm install -g yarn \
 && npm install -g nodemon \
 && groupadd -r nodejs && useradd -m -r -g nodejs nodejs

USER nodejs

# Create the app folder inside the container
RUN mkdir -p /home/nodejs/app
WORKDIR /home/nodejs/app

# Install & cache node_modules
COPY ./package.json .
# No install development dependencies in production
RUN if [ "${NODE_ENV}" = "development" ]; then \
        npm install; \
    else \
        npm install --production; \
    fi

# Copy the app inside the container
COPY . .

# Simple process supervisor and init system
ADD https://github.com/Yelp/dumb-init/releases/download/v1.2.0/dumb-init_1.2.0_amd64 /usr/local/bin/dumb-init
RUN chmod +x /usr/local/bin/dumb-init

# Application port
EXPOSE 8888

CMD ["npm", "start"];