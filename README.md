# Cytoscape Desktop in a Docker Image

Cytoscape Desktop in Docker image with GUI running using xvfb and VNC server

![cytoscape_desktop](cytoscape_desktop.png)

# An example of how to use this Docker image

1. Install Docker and Docker Compose for your OS.
2. run `mkdir trycydocker` command in your terminal.
3. run `cd trycydocker` command in your terminal.
4. copy [.env](https://github.com/cytoscape/docker-cytoscape-desktop/blob/master/.env) and [compose.yml](https://github.com/cytoscape/docker-cytoscape-desktop/blob/master/compose.yml) to the `trycydocker` directory
5. run `docker-compose up -d` command in your terminal.
6. open `http://localhost:8888/lab` and `http://localhost:6080/vnc_auto.html` in your web browser.
7. (optional) In `http://localhost:8888/lab`, create a Notebook [for Python] and run `!pip install py4cytoscape` in a code Cell, or a Notebook [for R] and run
    ```
    if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

    BiocManager::install("RCy3")
    ```

# DockerHub for this repository
Cytoscape content at DockerHub can be found here:

https://hub.docker.com/u/cytoscape
