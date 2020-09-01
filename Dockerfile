FROM grafana/grafana

EXPOSE 3000

USER root
COPY ./grafana_admin /etc/grafana/provisioning/grafana_admin
COPY ./dashboards /etc/grafana/provisioning/dashboards
COPY ./datasources /etc/grafana/provisioning/datasources
#COPY ./grafana.ini /etc/grafana/
RUN chown -R 472:472 /etc/grafana/provisioning
USER grafana

WORKDIR /
ENTRYPOINT [ "/run.sh" ]
