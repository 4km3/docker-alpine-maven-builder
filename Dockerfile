FROM rawmind/alpine-maven:3.3.9-1
MAINTAINER Rodrigo de la Fuente <rodrigo@delafuente.email>

LABEL Description="Alpine Maven Builder"                                       \
      Vendor="ACME Products"                                                   \
      Version="1.0"

# Install xpath, and github-release
RUN set -ex;                                                                   \
    apk add --update --no-cache perl-xml-xpath go musl-dev;                    \
    GOPATH=/usr go get github.com/aktau/github-release;                        \
    apk del musl-dev go

# Copy and set entrypoint
COPY entrypoint /usr/local/bin

ENTRYPOINT [ "/usr/local/bin/entrypoint" ]

