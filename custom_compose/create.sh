docker run -d \
  --name=code-server \
  -e PUID=1001 \
  -e PGID=1001 \
  -e TZ=Europe/Budapest \
  -e PASSWORD=$1 `#optional` \
  -e SUDO_PASSWORD=$1 \
  -e DEFAULT_WORKSPACE=/config/workspace `#optional` \
  -p 8443:8443 \
  -v /home/ubuntu/codeserver/workspace:/config \
  --restart unless-stopped \
  codeserver:latest