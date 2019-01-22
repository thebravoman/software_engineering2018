# if Rails.env != 'test'
#   email_settings = YAML::load(File.open("#{Rails.root.to_s}/config/email.yml"))
#   ActionMailer::Base.smtp_settings = email_settings[Rails.env] unless email_settings[Rails.env].nil?
# end

# development:
#   :address: smtp.gmail.com
#   :port: 587
#   :authentication: plain
#   :user_name: ENV['GMAIL_USERNAME']
#   :password: ENV['GMAIL_PASSWORD']
#   :enable_starttls_auto: true
# production:
#   :address: smtp.gmail.com
#   :port: 587
#   :authentication: plain
#   :user_name: ENV['GMAIL_USERNAME']
#   :password: ENV['GMAIL_PASSWORD']
#   :enable_starttls_auto: true