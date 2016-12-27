My Aps Net Core tests

docker build -t coretest .
docker run -d -p 81:5000 coretest
docker run -d -p 81:5000 --restart=unless-stopped -v /data:/data coretest
