FROM httpd:2.4

USER root

# Install node and svn (Debian-based image)
RUN apt-get update && \
    apt-get install -y nodejs npm subversion && \
    apt-get clean

COPY ./index.html /usr/local/apache2/htdocs/

EXPOSE 80
