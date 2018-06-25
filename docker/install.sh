echo "Biulding Image..."
docker build -t "setup_pycon:dockerfile" .

docker rm testing || echo "Creating Countainer..."

docker run -i -t --name testing setup_pycon:dockerfile
