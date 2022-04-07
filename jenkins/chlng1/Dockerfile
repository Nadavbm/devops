# Based on Centos image
FROM centos:7

# Define working directory
WORKDIR /usr/website

# Copy the directory to the working directory
COPY nginx-chlng/ /usr/website

# Expose port 8080, change also nginx.conf
EXPOSE 8080

# Run nginx from the container
RUN /usr/website/objs/nginx
