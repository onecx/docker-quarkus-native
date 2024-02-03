FROM registry.access.redhat.com/ubi9/ubi-minimal:9.3-1552

LABEL org.opencontainers.image.source="https://github.com/onecx/docker-quarkus-native"
LABEL org.opencontainers.image.description="Docker image for Quarkus native application base on ubi9/ubi-minimal"

EXPOSE 8080