FROM rawmind/alpine-maven:3.3.9-1
MAINTAINER Rodrigo de la Fuente <rodrigo@delafuente.email>

LABEL Description="Alpine Maven Builder"                                       \
      Vendor="ACME Products"                                                   \
      Version="1.0"

# Copy and set entrypoint
COPY entrypoint /usr/local/bin

ENTRYPOINT [ "/usr/local/bin/entrypoint" ]

