### Install prometheus, grafana etc.

```
# install prometheus grafana and node_exporter
brew install prometheus grafana node_exporter

# run prometheus
cd prometheus
prometheus config.file=prometheus.yml

# start grafana
brew services start grafana

# start node_exporter
brew services start node_exporter
```
