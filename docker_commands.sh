# Build frontapp image
docker build -t frontapp_image --build-arg JAR_FILE=frontapp/target/*.jar .
# Zsh shell globbing issue:
docker build -t frontapp_image --build-arg JAR_FILE="frontapp/target/*.jar" .

# Build backapp image
docker build -t backapp_image --build-arg JAR_FILE=backapp/target/*.jar .
# Zsh shell globbing issue:
docker build -t backapp_image --build-arg JAR_FILE="backapp/target/*.jar" .

# Docker image inspect for Labels check
docker image inspect frontapp_image -f '{{json .Config.Labels}}'
docker image inspect backapp_image -f '{{json .Config.Labels}}'

# Docker logs
docker-compose logs -f frontapp
