output "prices_id" {
  description = "Map of id values across all prices, keyed the same as var.prices"
  value       = { for k, v in stripe_price.prices : k => v.id }
}
output "prices_active" {
  description = "Map of active values across all prices, keyed the same as var.prices"
  value       = { for k, v in stripe_price.prices : k => v.active }
}
output "prices_billing_scheme" {
  description = "Map of billing_scheme values across all prices, keyed the same as var.prices"
  value       = { for k, v in stripe_price.prices : k => v.billing_scheme }
}
output "prices_created" {
  description = "Map of created values across all prices, keyed the same as var.prices"
  value       = { for k, v in stripe_price.prices : k => v.created }
}
output "prices_currency" {
  description = "Map of currency values across all prices, keyed the same as var.prices"
  value       = { for k, v in stripe_price.prices : k => v.currency }
}
output "prices_currency_options" {
  description = "Map of currency_options values across all prices, keyed the same as var.prices"
  value       = { for k, v in stripe_price.prices : k => v.currency_options }
}
output "prices_custom_unit_amount" {
  description = "Map of custom_unit_amount values across all prices, keyed the same as var.prices"
  value       = { for k, v in stripe_price.prices : k => v.custom_unit_amount }
}
output "prices_livemode" {
  description = "Map of livemode values across all prices, keyed the same as var.prices"
  value       = { for k, v in stripe_price.prices : k => v.livemode }
}
output "prices_lookup_key" {
  description = "Map of lookup_key values across all prices, keyed the same as var.prices"
  value       = { for k, v in stripe_price.prices : k => v.lookup_key }
}
output "prices_metadata" {
  description = "Map of metadata values across all prices, keyed the same as var.prices"
  value       = { for k, v in stripe_price.prices : k => v.metadata }
}
output "prices_nickname" {
  description = "Map of nickname values across all prices, keyed the same as var.prices"
  value       = { for k, v in stripe_price.prices : k => v.nickname }
}
output "prices_object" {
  description = "Map of object values across all prices, keyed the same as var.prices"
  value       = { for k, v in stripe_price.prices : k => v.object }
}
output "prices_product" {
  description = "Map of product values across all prices, keyed the same as var.prices"
  value       = { for k, v in stripe_price.prices : k => v.product }
}
output "prices_product_data" {
  description = "Map of product_data values across all prices, keyed the same as var.prices"
  value       = { for k, v in stripe_price.prices : k => v.product_data }
}
output "prices_recurring" {
  description = "Map of recurring values across all prices, keyed the same as var.prices"
  value       = { for k, v in stripe_price.prices : k => v.recurring }
}
output "prices_tax_behavior" {
  description = "Map of tax_behavior values across all prices, keyed the same as var.prices"
  value       = { for k, v in stripe_price.prices : k => v.tax_behavior }
}
output "prices_tiers" {
  description = "Map of tiers values across all prices, keyed the same as var.prices"
  value       = { for k, v in stripe_price.prices : k => v.tiers }
}
output "prices_tiers_mode" {
  description = "Map of tiers_mode values across all prices, keyed the same as var.prices"
  value       = { for k, v in stripe_price.prices : k => v.tiers_mode }
}
output "prices_transform_quantity" {
  description = "Map of transform_quantity values across all prices, keyed the same as var.prices"
  value       = { for k, v in stripe_price.prices : k => v.transform_quantity }
}
output "prices_type" {
  description = "Map of type values across all prices, keyed the same as var.prices"
  value       = { for k, v in stripe_price.prices : k => v.type }
}
output "prices_unit_amount" {
  description = "Map of unit_amount values across all prices, keyed the same as var.prices"
  value       = { for k, v in stripe_price.prices : k => v.unit_amount }
}
output "prices_unit_amount_decimal" {
  description = "Map of unit_amount_decimal values across all prices, keyed the same as var.prices"
  value       = { for k, v in stripe_price.prices : k => v.unit_amount_decimal }
}

