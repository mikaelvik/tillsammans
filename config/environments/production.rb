# Settings specified here will take precedence over those in config/environment.rb

# The production environment is meant for finished, "live" apps.
# Code is not reloaded between requests
config.cache_classes = true

# Use a different logger for distributed setups
# config.logger = SyslogLogger.new

# Full error reports are disabled and caching is turned on
config.action_controller.consider_all_requests_local = false
config.action_controller.perform_caching             = true
config.action_view.cache_template_loading            = true

# Enable serving of images, stylesheets, and javascripts from an asset server
# config.action_controller.asset_host                  = "http://assets.example.com"

# Disable delivery errors, bad email addresses will be ignored
# config.action_mailer.raise_delivery_errors = false

GeoKit::Geocoders::yahoo = 'Kzy9LfzV34Gxsceg.98S1iu.prtRxSM_c_Oxq0shMGxZgQPoURPrpW3LMwZ3ZZc7uA8Uzg0PgPAW8Q--'
GeoKit::Geocoders::google = 'ABQIAAAAWnmpHGMPJ5CaA_wxTZdWgxTOLbN0h-pWb__bwfOTih2047C7YBTG0vjmZQqtxU0DkUVrSCpNojfNsg'
