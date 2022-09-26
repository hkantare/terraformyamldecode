module "yamldecode" {
  source  = "levmel/yamldecode/multiple"
  version = "0.0.4"
  filepaths = ["routes/nsg_rules.yml", "services/logging/monitoring.yml"]
}

output "nsg_rules_entry" {
  value = module.yamldecode.files.nsg_rules.aks.ssh.source_address_prefix
}

output "application_insights_entry" {
  value = module.yamldecode.files.monitoring.application_insights.daily_data_cap_in_gb
}
