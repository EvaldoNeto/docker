# RUNNING CONTAINER

First change the image for one that matches yours on the first line:

- biga8/ubuntu-tomcat-7

 Put all .war files on the /target folder
 
After that execute

```
docker build -f ./Dockerfile -t YOUR_USER/YOUR_IMAGE_NAME
```

Now update run_useme.sh to use the image you just created instead of biga8/ubuntu-useme

Stop all mysql instances running in your machine and execute:

```
chmod +x ./run_useme.sh
./run_useme.sh
```

After that the container will be running with tomcat and a mysql localhost that gets your local database