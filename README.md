# jenkins-installation


```sh
docker-compose up -d --build
```

OR

```sh
docker run -it -v /var/run/docker.sock:/var/run/docker.sock -p 8080:8080 -p 50000:50000 \
-e JENKINS_OPTS="--prefix=/jenkins" -e JENKINS_ADMIN_ID=admin -e JENKINS_ADMIN_PASSWORD=secret \
canerdikkollu/jenkins:latest
```



