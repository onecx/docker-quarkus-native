FROM registry.access.redhat.com/ubi9/ubi-minimal:9.4-1194

LABEL org.opencontainers.image.source="https://github.com/onecx/docker-quarkus-native"
LABEL org.opencontainers.image.description="Docker image for Quarkus native application base on ubi9/ubi-minimal"

WORKDIR /work/
RUN chown 1001 /work \
    && chmod "g+rwX" /work \
    && chown 1001:root /work

USER 1001    
EXPOSE 8080

CMD ["./application", "-Dquarkus.http.host=0.0.0.0"]