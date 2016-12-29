FROM grafana/grafana:4.0.2

RUN apt-get update && \
    apt-get install -y curl

COPY run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 3000
ENTRYPOINT /run.sh