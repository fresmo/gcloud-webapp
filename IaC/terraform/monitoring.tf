#resource "google_monitoring_alert_policy" "cpu_alert" {
#  display_name = "CPU"
#  combiner     = "OR"
#  enabled      = true
#  severity     = "CRITICAL"
#
#  conditions {
#    display_name = "Kubernetes Node - CPU allocatable utilization"
#
#    condition_threshold {
#      filter          = "resource.type = \"k8s_node\" AND metric.type = \"kubernetes.io/node/cpu/allocatable_utilization\""
#      duration        = "0s"
#      comparison      = "COMPARISON_GT"
#      threshold_value = 71
#
#      trigger {
#        percent = 70
#      }
#
#      aggregations {
#        alignment_period   = "300s"
#        per_series_aligner = "ALIGN_MEAN"
#      }
#    }
#  }
#
#  alert_strategy {
#    auto_close = "3600s"
#  }
#
#  documentation {
#    content = "High CPU utilization detected on Kubernetes nodes. This may indicate resource constraints that could affect application performance.\n\nTroubleshooting steps:\n1. Check node resource usage with 'kubectl top nodes'\n2. Review pod resource requests/limits\n3. Consider scaling up the node pool if consistently high"
#    mime_type = "text/markdown"
#  }
#}