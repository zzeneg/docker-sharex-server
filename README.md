# docker-sharex-server
Dockerized ShareX server ([TannerReynolds/ShareX-Upload-Server](https://github.com/TannerReynolds/ShareX-Upload-Server))

Published on [Docker Hub](https://hub.docker.com/r/zzeneg/sharex-server)

## Usage
- specify environment variable:
  - DOMAIN - your server domain
  - KEY - password for private uploading
  - ADMIN_KEY - admin password for uploading & for gallery access
- mount a folder or a volume to `/sharex/src/server/uploads` to keep your uploads permanently
- docker-compose example
  ```yaml
  sharex:
    container_name: sharex
    image: zzeneg/sharex-server
    restart: unless-stopped
    volumes:
      - ./sharex:/sharex/src/server/uploads
    environment:
      KEY: mykey
      DOMAIN: mydomain
      ADMIN_KEY: myadminkey
  ```
