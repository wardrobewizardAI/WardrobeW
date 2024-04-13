if [ -f /opt/AppFolder/docker-compose.yml ]; then
  cd /opt/AppFolder
  docker-compose down
fi
rm -rf /opt/AppFolder/frontend/*
cp -r /home/circleci/build/* /opt/AppFolder/frontend/
mv -f /home/circleci/docker-compose.yml /opt/AppFolder/
cd /opt/AppFolder
docker-compose pull
docker-compose up -d
