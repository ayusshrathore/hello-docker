# Deploying app using Docker

-   Building app image
    `docker build -t hello-docker:latest .`

-   Running the image container
    `docker run hello-docker:latest`

## Misc. notes

-   To stop the container
    `docker stop container-id`

-   Prune unwanted images
    `docker image prune`

-   Some common flags
    `-d`: Detached Mode
    `-p`: Port Number
    `-it`: Interactive Mode
    `-v`: Volume
    `--name`: Name of the image
