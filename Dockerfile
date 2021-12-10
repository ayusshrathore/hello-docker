# Using node image for Alpine
FROM node:alpine 

# Setting working directory
WORKDIR /app

# Copying all files to the root directory
COPY . .

# Shell form of the dockerfile
# CMD node app.js
CMD node app.js
# Exec form of the dockerfile
# Use exec form to avoid bringing up new shells

# Instructions that don't change frequently should be at the top of the dockerfile.
# docker run -d -p 3000:3000 --name my-app my-app
# run - new container | exec - existing conatiner | -d - detached mode | -p - port mapping | --name - name of the container | my-app - name of the image
# docker run -d -p 3000:3000 --name my-app my-app -v app-data:/app/data
# -v - volume mapping | app-data - path of the volume | /app/data - path of the volume inside the container
# docker run -d -p 3000:3000 --name my-app my-app -v app-data:/app/data -v app-logs:/app/logs
# docker cp my-app:/app/data/data.json .
# docker run -d -p 3000:3000 -v $(pwd):/app