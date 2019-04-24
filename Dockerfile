FROM balenalib/rpi-raspbian

WORKDIR /usr/src/app

RUN apt-get update
RUN apt-get install libcups2-dev libcupsimage2-dev git build-essential cups system-config-printer -y

COPY ./scripts /usr/src/app/scripts
RUN /usr/src/app/scripts/install-zj58.sh

ENTRYPOINT ["/usr/src/app/scripts/entrypoint.sh"]

