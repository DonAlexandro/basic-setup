FROM node:19.3.0
WORKDIR /server

COPY package.json .
ARG NODE_ENV
RUN if [ "$NODE_ENV" = "development" ]; \
    then npm install; \
    else npm install --omit=dev; \
    fi

COPY . ./
# CMD ["node", "dist/src/main"]
