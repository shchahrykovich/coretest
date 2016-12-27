My Aps Net Core tests

docker build -t coretest .

docker run -d -p 81:5000 coretest

docker run -d -p 81:5000 --restart=unless-stopped -v /containers/coretest/data:/data coretest

docker run -ti -p 81:5000 --restart=unless-stopped -v /containers/coretest/data:/data --entrypoint=/bin/bash coretest

