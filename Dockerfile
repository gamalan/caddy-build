FROM alpine:3.14 as alpine
RUN apk add -U --no-cache ca-certificates

# Image starts here
FROM scratch
LABEL maintainer "Gamal Abdul Nasser <gamalanpro@gmail.com>"

EXPOSE 80 443 2019
ENV XDG_CONFIG_HOME /config
ENV XDG_DATA_HOME /data

WORKDIR /
COPY --from=alpine /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/

COPY artifacts/binaries/linux/amd64/caddy /bin/

ENTRYPOINT ["/bin/caddy"]

CMD ["docker-proxy"]