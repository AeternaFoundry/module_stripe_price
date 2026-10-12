output "prices_id" {
  description = "Map of id values across all prices, keyed the same as var.prices except keys with no id are omitted"
  value       = { for k, v in stripe_price.prices : k => v.id if v.id != null && length(v.id) > 0 }
}
output "prices_active" {
  description = "Map of active values across all prices, keyed the same as var.prices except keys with no active are omitted"
  value       = { for k, v in stripe_price.prices : k => v.active if v.active != null }
}
output "prices_billing_scheme" {
  description = "Map of billing_scheme values across all prices, keyed the same as var.prices except keys with no billing_scheme are omitted"
  value       = { for k, v in stripe_price.prices : k => v.billing_scheme if v.billing_scheme != null && length(v.billing_scheme) > 0 }
}
output "prices_created" {
  description = "Map of created values across all prices, keyed the same as var.prices except keys with no created are omitted"
  value       = { for k, v in stripe_price.prices : k => v.created if v.created != null }
}
output "prices_currency" {
  description = "Map of currency values across all prices, keyed the same as var.prices except keys with no currency are omitted"
  value       = { for k, v in stripe_price.prices : k => v.currency if v.currency != null && length(v.currency) > 0 }
}
output "prices_currency_options" {
  description = "Map of currency_options values across all prices, keyed the same as var.prices except keys with no currency_options are omitted"
  value       = { for k, v in stripe_price.prices : k => v.currency_options if v.currency_options != null && length(v.currency_options) > 0 }
}
output "prices_custom_unit_amount" {
  description = "Map of custom_unit_amount values across all prices, keyed the same as var.prices except keys with no custom_unit_amount are omitted"
  value       = { for k, v in stripe_price.prices : k => v.custom_unit_amount if v.custom_unit_amount != null && length(v.custom_unit_amount) > 0 }
}
output "prices_livemode" {
  description = "Map of livemode values across all prices, keyed the same as var.prices except keys with no livemode are omitted"
  value       = { for k, v in stripe_price.prices : k => v.livemode if v.livemode != null }
}
output "prices_lookup_key" {
  description = "Map of lookup_key values across all prices, keyed the same as var.prices except keys with no lookup_key are omitted"
  value       = { for k, v in stripe_price.prices : k => v.lookup_key if v.lookup_key != null && length(v.lookup_key) > 0 }
}
output "prices_metadata" {
  description = "Map of metadata values across all prices, keyed the same as var.prices except keys with no metadata are omitted"
  value       = { for k, v in stripe_price.prices : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "prices_nickname" {
  description = "Map of nickname values across all prices, keyed the same as var.prices except keys with no nickname are omitted"
  value       = { for k, v in stripe_price.prices : k => v.nickname if v.nickname != null && length(v.nickname) > 0 }
}
output "prices_object" {
  description = "Map of object values across all prices, keyed the same as var.prices except keys with no object are omitted"
  value       = { for k, v in stripe_price.prices : k => v.object if v.object != null && length(v.object) > 0 }
}
output "prices_product" {
  description = "Map of product values across all prices, keyed the same as var.prices except keys with no product are omitted"
  value       = { for k, v in stripe_price.prices : k => v.product if v.product != null && length(v.product) > 0 }
}
output "prices_product_data" {
  description = "Map of product_data values across all prices, keyed the same as var.prices except keys with no product_data are omitted"
  value       = { for k, v in stripe_price.prices : k => v.product_data if v.product_data != null && length(v.product_data) > 0 }
}
output "prices_recurring" {
  description = "Map of recurring values across all prices, keyed the same as var.prices except keys with no recurring are omitted"
  value       = { for k, v in stripe_price.prices : k => v.recurring if v.recurring != null && length(v.recurring) > 0 }
}
output "prices_tax_behavior" {
  description = "Map of tax_behavior values across all prices, keyed the same as var.prices except keys with no tax_behavior are omitted"
  value       = { for k, v in stripe_price.prices : k => v.tax_behavior if v.tax_behavior != null && length(v.tax_behavior) > 0 }
}
output "prices_tiers" {
  description = "Map of tiers values across all prices, keyed the same as var.prices except keys with no tiers are omitted"
  value       = { for k, v in stripe_price.prices : k => v.tiers if v.tiers != null && length(v.tiers) > 0 }
}
output "prices_tiers_mode" {
  description = "Map of tiers_mode values across all prices, keyed the same as var.prices except keys with no tiers_mode are omitted"
  value       = { for k, v in stripe_price.prices : k => v.tiers_mode if v.tiers_mode != null && length(v.tiers_mode) > 0 }
}
output "prices_transform_quantity" {
  description = "Map of transform_quantity values across all prices, keyed the same as var.prices except keys with no transform_quantity are omitted"
  value       = { for k, v in stripe_price.prices : k => v.transform_quantity if v.transform_quantity != null && length(v.transform_quantity) > 0 }
}
output "prices_type" {
  description = "Map of type values across all prices, keyed the same as var.prices except keys with no type are omitted"
  value       = { for k, v in stripe_price.prices : k => v.type if v.type != null && length(v.type) > 0 }
}
output "prices_unit_amount" {
  description = "Map of unit_amount values across all prices, keyed the same as var.prices except keys with no unit_amount are omitted"
  value       = { for k, v in stripe_price.prices : k => v.unit_amount if v.unit_amount != null }
}
output "prices_unit_amount_decimal" {
  description = "Map of unit_amount_decimal values across all prices, keyed the same as var.prices except keys with no unit_amount_decimal are omitted"
  value       = { for k, v in stripe_price.prices : k => v.unit_amount_decimal if v.unit_amount_decimal != null && length(v.unit_amount_decimal) > 0 }
}

