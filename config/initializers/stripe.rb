Rails.configuration.stripe = {
  :publishable_key => ENV['pk_live_CBRK64PqRV5qNmPQOMB2Yrwh'],
  :secret_key      => ENV['sk_live_REszAW0b84G5VXcLC4TCudMn']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
