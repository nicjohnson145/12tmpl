FROM hairyhenderson/gomplate:v4.1.0-alpine AS gomplate

FROM alpine:latest
COPY --from=gomplate /bin/gomplate /bin/.
COPY copy.sh /bin/copy.sh
RUN chmod +x /bin/copy.sh
ENTRYPOINT /bin/sh /bin/copy.sh
