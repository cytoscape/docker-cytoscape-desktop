# Cytoscape Desktop in a Docker Image

Cytoscape Desktop in Docker image with GUI running using xvfb and VNC server

![cytoscape_desktop](cytoscape_desktop.png)

Cytoscape content at DockerHub can be found here:

https://hub.docker.com/u/cytoscape

# Build
Clone this repo, cd into it and build the container yourself

## For Cytoscape Automation with RCy3
```
git clone https://github.com/cytoscape/docker-cytoscape-desktop
cd docker-cytoscape-desktop/rcy3
docker build -t cytoscape/cytoscape-desktop-rcy3 .
```

## For Cytoscape Automation with py4cytoscape
```
git clone https://github.com/cytoscape/docker-cytoscape-desktop
cd docker-cytoscape-desktop/py4cytoscape
docker build -t cytoscape/cytoscape-desktop-p4c .
```


# Run
## Launch Cytoscape with RStudio(+RCy3) in Docker
In a local terminal window, issue the following commands to run this docker container and launch Cytoscape:
```
docker run -p 6080:6080 -p 8787:8787 cytoscape/cytoscape-desktop-rcy3
```

1. Open the URL below with your web browser:

* http://localhost:6080/vnc.html (and Click the "Connect" button) 
* http://localhost:8787/ (username: rstudio, password: cytoscape)

## Launch Cytoscape with Jupyter(+py4cytoscape) in Docker
In a local terminal window, issue the following commands to run this docker container and launch Cytoscape:
```
docker run -p 6080:6080 -p 8888:8888 cytoscape/cytoscape-desktop-p4c
```

1. Open the URL below with your web browser:

* http://localhost:6080/vnc.html (and Click the "Connect" button) 
* http://localhost:8888/lab
