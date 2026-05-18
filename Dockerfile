FROM registry.access.redhat.com/ubi10/ubi-minimal:10.1-1778576723 AS min

FROM registry.access.redhat.com/ubi10-micro:10.1-1778532954

LABEL org.opencontainers.image.source="https://github.com/onecx/docker-quarkus-native"
LABEL org.opencontainers.image.description="Docker image for Quarkus native application base on ubi10/ubi-minimal"

WORKDIR /work/

COPY --from=min /usr/lib64/libgcc_s.so.1 /usr/lib64/libstdc++.so.6 /usr/lib64/libz.so.1 /usr/lib64/

RUN chown 1001 /work \
    && chmod 0755 /work \
    && chown 1001:root /work

USER 1001
EXPOSE 8080

CMD ["./application", "-Dquarkus.http.host=0.0.0.0"]
