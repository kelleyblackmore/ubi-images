FROM registry.access.redhat.com/ubi10/ubi:latest

COPY scripts/hardening.sh /usr/local/bin/hardening.sh
RUN /usr/local/bin/hardening.sh

