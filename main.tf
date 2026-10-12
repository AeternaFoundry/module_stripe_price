resource "stripe_price" "prices" {
  for_each = var.prices

  currency            = each.value.currency
  active              = each.value.active
  billing_scheme      = each.value.billing_scheme
  lookup_key          = each.value.lookup_key
  metadata            = each.value.metadata
  nickname            = each.value.nickname
  product             = each.value.product
  tax_behavior        = each.value.tax_behavior
  tiers_mode          = each.value.tiers_mode
  transfer_lookup_key = each.value.transfer_lookup_key
  transform_quantity  = each.value.transform_quantity
  unit_amount         = each.value.unit_amount
  unit_amount_decimal = each.value.unit_amount_decimal

  dynamic "currency_options" {
    for_each = each.value.currency_options != null ? each.value.currency_options : []
    content {
      dynamic "custom_unit_amount" {
        for_each = currency_options.value.custom_unit_amount != null ? currency_options.value.custom_unit_amount : []
        content {
          enabled = custom_unit_amount.value.enabled
          maximum = custom_unit_amount.value.maximum
          minimum = custom_unit_amount.value.minimum
          preset  = custom_unit_amount.value.preset
        }
      }
      key                 = currency_options.value.key
      tax_behavior        = currency_options.value.tax_behavior
      tiers               = currency_options.value.tiers
      unit_amount         = currency_options.value.unit_amount
      unit_amount_decimal = currency_options.value.unit_amount_decimal
    }
  }

  dynamic "custom_unit_amount" {
    for_each = each.value.custom_unit_amount != null ? each.value.custom_unit_amount : []
    content {
      enabled = custom_unit_amount.value.enabled
      maximum = custom_unit_amount.value.maximum
      minimum = custom_unit_amount.value.minimum
      preset  = custom_unit_amount.value.preset
    }
  }

  dynamic "product_data" {
    for_each = each.value.product_data != null ? each.value.product_data : []
    content {
      active               = product_data.value.active
      id                   = product_data.value.id
      metadata             = product_data.value.metadata
      name                 = product_data.value.name
      statement_descriptor = product_data.value.statement_descriptor
      tax_code             = product_data.value.tax_code
      unit_label           = product_data.value.unit_label
    }
  }

  dynamic "recurring" {
    for_each = each.value.recurring != null ? each.value.recurring : []
    content {
      interval          = recurring.value.interval
      interval_count    = recurring.value.interval_count
      meter             = recurring.value.meter
      trial_period_days = recurring.value.trial_period_days
      usage_type        = recurring.value.usage_type
    }
  }

  dynamic "tiers" {
    for_each = each.value.tiers != null ? each.value.tiers : []
    content {
      flat_amount         = tiers.value.flat_amount
      flat_amount_decimal = tiers.value.flat_amount_decimal
      unit_amount         = tiers.value.unit_amount
      unit_amount_decimal = tiers.value.unit_amount_decimal
      up_to               = tiers.value.up_to
    }
  }
}

