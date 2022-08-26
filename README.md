# Cytoscape Desktop in a Docker Image

Cytoscape Desktop in Docker image with GUI running using xvfb and VNC server

![cytoscape_desktop](cytoscape_desktop.png)

<!---
Cytoscape content at DockerHub can be found here:

https://hub.docker.com/u/cytoscape
-->

# (Get the pre-built Docker image from dockerhub and) Run the image.
## Launch Cytoscape with RStudio(+RCy3) in Docker
In a local terminal window, run the following command to create a Docker container for Cytoscape+R automation:

```
docker run -p 6080:6080 -p 8787:8787 cytoscape/cytoscape-desktop:rcy3-2.16.0
```

1. Open the URL below with your web browser:

* http://localhost:6080/vnc_auto.html
* http://localhost:8787/ (username: rstudio, password: cytoscape)

## Launch Cytoscape with Jupyter(+py4cytoscape) in Docker
In a local terminal window, run the following command to create a Docker container for Cytoscape+Python automation:

```
docker run -p 6080:6080 -p 8888:8888 cytoscape/cytoscape-desktop:py4cytoscape-1.3.0
```

1. Open the URL below with your web browser:

* http://localhost:6080/vnc_auto.html
* http://localhost:8888/lab

## Launch Cytoscape only in Docker

In a local terminal window, run the following command to create a Docker container for Cytoscape only:
```
docker run -p 6080:6080 -p 1234:1234 cytoscape/cytoscape-desktop:3.9.1
```

1. Open the URL below with your web browser:

* http://localhost:6080/vnc_auto.html

# (Or) Build the image yourself
Clone this repo, cd into it and build the image yourself

## For Cytoscape Automation with RCy3
```
git clone https://github.com/cytoscape/docker-cytoscape-desktop
cd docker-cytoscape-desktop/rcy3
docker build -t cytoscape/cytoscape-desktop:rcy3-2.16.0 .
```

## For Cytoscape Automation with py4cytoscape
```
git clone https://github.com/cytoscape/docker-cytoscape-desktop
cd docker-cytoscape-desktop/py4cytoscape
docker build -t cytoscape/cytoscape-desktop:py4cytoscape-1.3.0 .
```

## Just for Cytoscape
```
git clone https://github.com/cytoscape/docker-cytoscape-desktop
cd docker-cytoscape-desktop/base
docker build -t cytoscape/cytoscape-desktop:3.9.1 .
```
