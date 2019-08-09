FROM ubuntu:16.04 as ubuntu

RUN apt update \ 
    && apt install -y curl \
    && curl https://getcaddy.com | bash -s personal docker,http.cache,http.locale,http.minify,http.prometheus,http.proxyprotocol,http.ratelimit,http.realip,http.reauth,http.s3browser,tls.dns.cloudflare,tls.dns.digitalocean,tls.dns.namecheap

RUN apt autoremove -y \
    && apt autoclean -y \
    && apt clean -y

FROM alpine:3.7 as alpine
RUN apk add -U --no-cache ca-certificates

# Image starts here
FROM scratch
LABEL maintainer "Gamal Abdul Nasser <gamalanpro@gmail.com>"

EXPOSE 80 443 2015
ENV HOME /root

WORKDIR /
COPY --from=alpine /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=ubuntu /usr/local/bin/caddy /bin/

ENTRYPOINT ["/bin/caddy"]