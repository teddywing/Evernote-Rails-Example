Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :evernote, ENV['EVERNOTE_CONSUMER_KEY'], ENV['EVERNOTE_CONSUMER_SECRET'], :client_options => { :site => 'https://sandbox.evernote.com' }
end
