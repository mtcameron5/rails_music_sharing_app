# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Amazon AWS Variables
ENV['AWS_ACCESS_KEY_ID'] = 'AKIAZYO64M6EXRU6Q2MJ'
ENV['AWS_SECRET_KEY'] = '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'
ENV['AWS_REGION'] = 'us-west-1'
ENV['BUCKET_NAME'] = 's3musicsharingapp'