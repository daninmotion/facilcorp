Rails.configuration.stripe = {
  :publishable_key => ['pk_test_zojus3bO0DLMm8Umk7fBA1JF'],
  :secret_key      => ['sk_test_Fh7rhVr2UaiyLWxNPLX50WkG']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
