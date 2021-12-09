# jenkins-with-docker-client
**Official Jenkins LTS image with added Docker client**

# Build image:

    docker build . -t myjenkinswithdocker

# Create container from the builded image:

    docker run -d --restart always -p 8080:8080 -p 50000:50000 -v /home/smart/jenkinsindocker_files:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock --group-add=$(stat -c %g /var/run/docker.sock) myjenkinswithdocker
    
