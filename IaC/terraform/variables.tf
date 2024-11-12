variable "project_id" {
  description = "The ID of the project in which to create resources"
  type        = string
}

variable "environment" {
  description = "The environment in which to create resources"
  type        = string
}

variable "region" {
  description = "The region in which to create resources"
  type        = string
  default     = "europe-west3"
}

variable "k8s_cluster_name" {
  description = "The name of the Kubernetes cluster"
  type        = string
}

variable "k8s_node_machine_type" {
  description = "The machine type of the Kubernetes nodes"
  type        = string
  default     = "e2-medium"
}

