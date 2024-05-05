# Builds and start containers for development
devBuild() {
  docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d --build
}

# Starts containers for development
devStart() {
  docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d
}

# Shutdowns containers that was run for development
devDown() {
  docker-compose -f docker-compose.yml -f docker-compose.dev.yml down
}

# Builds and start containers for production
prodBuild() {
  docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d --build
}

# Starts containers for production
prodStart() {
  docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d
}

# Shutdowns containers that was run for production
prodDown() {
  docker-compose -f docker-compose.yml -f docker-compose.prod.yml down
}

# Pushes images to external artifacts storage
prodPush() {
  docker push name-of-the-image --all-tags
}
