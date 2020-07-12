# Cytoscape Desktop in a Docker Image

Cytoscape Desktop in Docker image with GUI running using xvfb and VNC server

![cytoscape_desktop](cytoscape_desktop.png)

This Docker image is built on top of the ubuntu:20.04 image.

https://hub.docker.com/_/ubuntu

Cytoscape content at DockerHub can be found here:

https://hub.docker.com/u/cytoscape

# Pull or Build
You have the option of pulling the latest container from DockerHub,
```
docker pull cytoscape/cytoscape-desktop:latest
```

or you can clone this repo, cd into it and build the container yourself
```
docker build -t cytoscape/cytoscape-desktop .
```

# Run
## Launch Cytoscape in Docker
In a local terminal window, issue the following commands to run this docker container and launch Cytoscape:
```
docker run -v /Users/user/dockerroot:/root -p 1234:1234 -p 5900:5900 cytoscape/cytoscape-desktop:latest
```
 
_**Note: Files saved in '/root' is accessible on the host system at '/Users/user/dockerroot'.**_ 
For example, in R using the RCy3 package you will want to prepend this output path to all your save and export args:
```
output.path <- '/root/'
saveSession(paste0(output.path, 'my-session-file'))
```

_Pro-tip: Before shutting down the container, be sure to check that all your output files have indeed been saved locally._

## Interact
### Local Shell
```
docker exec -it cy bash
```

### VNC
#### RealVNC
Connect with VNC (https://www.realvnc.com/download/viewer/) using the URL below:

* URL: localhost:5900

No password is required.

Additionally, the VNC viewer is available as a Chrome extension:

https://chrome.google.com/webstore/detail/vnc%C2%AE-viewer-for-google-ch/iabmpiboiopbgfabjmgeedhcmjenhbla?hl=en

and accessible via this link in Chrome:

chrome://apps/

#### TightVNC
Use TightVNC if having problems with right click on MacOS with noVNC and RealVNC: https://www.tightvnc.com/download.php

Running Java-Based TightVNC Client
```
java VncViewer HOST localhost PORT 5900
```

# Stop
```
docker stop cy
```
