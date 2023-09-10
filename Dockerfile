FROM ubuntu:22.04

# PARAMETERS
ENV CYTOSCAPE_VERSION 3.10.1

# CHANGE USER
USER root

# INSTALL JAVA
RUN apt-get update && apt-get -y install openjdk-17-jdk libxcursor1 xvfb supervisor wget x11vnc novnc websockify
RUN wget https://github.com/cytoscape/cytoscape/releases/download/${CYTOSCAPE_VERSION}/cytoscape-unix-${CYTOSCAPE_VERSION}.tar.gz
RUN tar xf cytoscape-unix-${CYTOSCAPE_VERSION}.tar.gz && rm cytoscape-unix-${CYTOSCAPE_VERSION}.tar.gz
RUN cd /cytoscape-unix-${CYTOSCAPE_VERSION}/framework/system/org/cytoscape/property-impl/${CYTOSCAPE_VERSION} \
    && jar -xf property-impl-${CYTOSCAPE_VERSION}.jar cytoscape3.props \
    && cat cytoscape3.props | sed "s/^cyrest.version.*/cyrest.version=3.12.3/g" > cytoscape3.props.tmp \
    && mv cytoscape3.props.tmp cytoscape3.props \
    && jar -uf property-impl-${CYTOSCAPE_VERSION}.jar cytoscape3.props \
    && rm cytoscape3.props \
    && cd /
# Set JAVA_HOME From sudo update-alternatives --config java
RUN echo 'JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64"' >> /etc/environment

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord"]
