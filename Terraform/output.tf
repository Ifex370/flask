
output "network" {
  description = "ls3-lab network name"
  value       = google_compute_network.ls3_lab_network

}

output "instance_name" {
  description = "ls3-lab Instance name"
  value       = google_compute_instance.ls3_instance.name

}

output "firewall_rules" {
  description = "ls3-lab Firewall rules"
  value       = google_compute_firewall.ls3_lab_firewall.allow

}