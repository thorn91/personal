# Docker commands
sudo docker stop thorn91:personal
sudo docker rm $(docker ps -a -f status=exited -q)
sudo ocker kill website
sudo docker build -t thorn91:personal .
sudo docker run --name website --rm -d -p 80:80 thorn91:personal
