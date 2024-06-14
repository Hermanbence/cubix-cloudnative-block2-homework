# Build frontapp image
docker build -t backapp_image2 -f Dockerfile backapp

# Build backapp image
docker build -t frontapp_image2 -f Dockerfile frontapp

# Docker image inspect for Labels check
docker image inspect frontapp_image -f '{{json .Config.Labels}}'
docker image inspect backapp_image -f '{{json .Config.Labels}}'

# Docker-compose
docker-compose up -d

# Docker logs
docker-compose logs -f frontapp