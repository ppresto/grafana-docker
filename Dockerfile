FROM grafana/grafana

EXPOSE 3000

USER root
COPY ./dashboards /etc/grafana/provisioning/dashboards
COPY ./datasources /etc/grafana/provisioning/datasources
RUN chown -R 472:472 /etc/grafana/provisioning
USER grafana

WORKDIR /
ENTRYPOINT [ "/run.sh" ]
