variable "project_id" {
  description = "The project ID to host the instance"
  default     = "elemental-shine-338522"
}


variable "region" {
  description = "The region to host the instance in"
  default     = "europe-west1"
}

variable "zone" {
  description = "The zone to host the instance in"
  default     = "europe-west1-c"
}

variable "network" {
  description = "The network created to host the instance in"
  default =      "ls3-network"
}

