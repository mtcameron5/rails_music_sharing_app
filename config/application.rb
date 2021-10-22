require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MusicSharingApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # AWS::S3::Base.establish_connection!(
    #   :access_key_id     => "AKIAZYO64M6EXRU6Q2MJ",
    #   :secret_access_key => "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"
    # )
    BUCKET = "s3musicsharingapp"
    # Settings in config/envir  onments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
