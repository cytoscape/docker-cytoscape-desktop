FROM ubuntu:20.04

# PARAMETERS
ENV CYTOSCAPE_VERSION 3.9.1

# CHANGE USER
USER root

# INSTALL JAVA
RUN apt-get update && apt-get -y install default-jdk libxcursor1 xvfb supervisor wget x11vnc novnc websockify
RUN wget https://github.com/cytoscape/cytoscape/releases/download/3.9.1/cytoscape-unix-3.9.1.tar.gz
RUN tar xf cytoscape-unix-3.9.1.tar.gz && rm cytoscape-unix-3.9.1.tar.gz
RUN cd /cytoscape-unix-3.9.1/framework/system/org/cytoscape/property-impl/3.9.1 \
    && jar -xf property-impl-3.9.1.jar cytoscape3.props \
    && cat cytoscape3.props | sed "s/^cyrest.version.*/cyrest.version=3.12.3/g" > cytoscape3.props.tmp \
    && mv cytoscape3.props.tmp cytoscape3.props \
    && jar -uf property-impl-3.9.1.jar cytoscape3.props \
    && rm cytoscape3.props \
    && cd /
# Set JAVA_HOME From sudo update-alternatives --config java
RUN echo 'JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"' >> /etc/environment

COPY supervisor/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord"]
