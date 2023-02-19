# Prometheus

Prometheus is a **monitoring system and time series database**. It collects metrics from configured targets at given intervals, evaluates rule expressions, displays the results, and can trigger alerts if some condition is observed to be true.

## Components
- **main server**: scrapes and stores metrics
- **alertmanager**: handles alerts
- **pushgateway**: temporary storage for metrics
- **exporters**: expose metrics from third-party systems
### Exporters
Binary running on the same host as the monitored service. It exposes metrics in a format that Prometheus can understand.
#### Example
Run an exporter for Jenkins to expose metrics about the build status
### Pushgateway
Persist metrics for a short time. Allows Prometheus to scrape metrics after batch jobs have finished.
### Alertmanager
Handles alerts sent by Prometheus server. It takes care of deduplicating, grouping, and routing them to the correct receiver integration such as email, PagerDuty, or OpsGenie. It also takes care of silencing and inhibition of alerts.
#### Example
Alertmanager can be configured to send an email to the team when the Jenkins build fails.

## Architecture
![Prometheus architecture](https://prometheus.io/assets/architecture.png)

## Some questions
- What is the difference between a metric and a time series?
```
A metric is a single variable that changes over time. A time series is a set of data points indexed in time order.
```
- Can I monitor batch jobs with Prometheus?
```
Yes, you can use the pushgateway to store metrics for a short time.
```
- Can I monitor machines with Prometheus?
```
Yes, you can use node_exporter to expose metrics about the machine like CPU, memory, disk, and network usage.
```