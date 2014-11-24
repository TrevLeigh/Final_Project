module HomeHelper
  require 'rubygems' # not necessary with ruby 1.9 but included for completeness
  require 'twilio-ruby'

# put your own credentials here
  account_sid = 'AC8e779260a46e14eb242a3c7aabc03e7c'
  auth_token = 'cc816e19c476dad63cb39f2d00a2ae93'

# set up a client to talk to the Twilio REST API
  @client = Twilio::REST::Client.new account_sid, auth_token

  @client.account.calls.create({
                                   :to => '806-206-8645',
                                   :from => '+18065132486',
                                   :method => 'GET',
                                   :fallback_method => 'GET',
                                   :status_callback_method => 'GET',
                                   :record => 'false'
                               })
end
