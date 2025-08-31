## express app

**docker-compose.yml:**  
```
services:
  watchtower:
    image: containrrr/watchtower
    environment:
      -  WATCHTOWER_POLL_INTERVAL=60
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
    container_name: watchtower
    command: --label-enable
  app:
   image: wearecooked/nodeapp
   build: ./
   ports:
    - 8080:8080  
```
