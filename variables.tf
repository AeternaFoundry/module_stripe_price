variable "prices" {
  description = <<EOT
Map of prices, attributes below
Required:
    - currency
Optional:
    - active
    - billing_scheme
    - lookup_key
    - metadata
    - nickname
    - product
    - tax_behavior
    - tiers_mode
    - transfer_lookup_key
    - transform_quantity
    - unit_amount
    - unit_amount_decimal
    - currency_options (block):
        - custom_unit_amount (optional, block):
            - enabled (required)
            - maximum (optional)
            - minimum (optional)
            - preset (optional)
        - key (required)
        - tax_behavior (optional)
        - tiers (optional, block):
            - flat_amount (optional)
            - flat_amount_decimal (optional)
            - unit_amount (optional)
            - unit_amount_decimal (optional)
            - up_to (required)
        - unit_amount (optional)
        - unit_amount_decimal (optional)
    - custom_unit_amount (block):
        - enabled (required)
        - maximum (optional)
        - minimum (optional)
        - preset (optional)
    - product_data (block):
        - active (optional)
        - id (optional)
        - metadata (optional)
        - name (required)
        - statement_descriptor (optional)
        - tax_code (optional)
        - unit_label (optional)
    - recurring (block):
        - interval (required)
        - interval_count (optional)
        - meter (optional)
        - trial_period_days (optional)
        - usage_type (optional)
    - tiers (block):
        - flat_amount (optional)
        - flat_amount_decimal (optional)
        - unit_amount (optional)
        - unit_amount_decimal (optional)
        - up_to (required)
EOT

  type = map(object({
    currency            = string
    active              = optional(bool)
    billing_scheme      = optional(string)
    lookup_key          = optional(string)
    metadata            = optional(map(string))
    nickname            = optional(string)
    product             = optional(string)
    tax_behavior        = optional(string)
    tiers_mode          = optional(string)
    transfer_lookup_key = optional(bool)
    transform_quantity = optional(object({
      divide_by = number
      round     = string
    }))
    unit_amount         = optional(number)
    unit_amount_decimal = optional(string)
    currency_options = optional(list(object({
      custom_unit_amount = optional(list(object({
        enabled = bool
        maximum = optional(number)
        minimum = optional(number)
        preset  = optional(number)
      })))
      key          = string
      tax_behavior = optional(string)
      tiers = optional(list(object({
        flat_amount         = optional(number)
        flat_amount_decimal = optional(string)
        unit_amount         = optional(number)
        unit_amount_decimal = optional(string)
        up_to               = string
      })))
      unit_amount         = optional(number)
      unit_amount_decimal = optional(string)
    })))
    custom_unit_amount = optional(list(object({
      enabled = bool
      maximum = optional(number)
      minimum = optional(number)
      preset  = optional(number)
    })))
    product_data = optional(list(object({
      active               = optional(bool)
      id                   = optional(string)
      metadata             = optional(map(string))
      name                 = string
      statement_descriptor = optional(string)
      tax_code             = optional(string)
      unit_label           = optional(string)
    })))
    recurring = optional(list(object({
      interval          = string
      interval_count    = optional(number)
      meter             = optional(string)
      trial_period_days = optional(number)
      usage_type        = optional(string)
    })))
    tiers = optional(list(object({
      flat_amount         = optional(number)
      flat_amount_decimal = optional(string)
      unit_amount         = optional(number)
      unit_amount_decimal = optional(string)
      up_to               = string
    })))
  }))
}

