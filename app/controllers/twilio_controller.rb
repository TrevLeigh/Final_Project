require 'twilio-ruby'
class TwilioController < ApplicationController
  def send_sms
    message = params[:message]
    number = params[:number]
    account_sid = 'AC8e779260a46e14eb242a3c7aabc03e7c'
    auth_token = 'cc816e19c476dad63cb39f2d00a2ae93'

# set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.account.messages.create({
                                        :from => '+18065132420',
                                        :to => "+1" + "#{number}",
                                        :body => "#{message}",
                                    })
    redirect_to '/'
  end


  def send_mms
    number = params[:number]
    url = params[:url]
    account_sid = 'AC8e779260a46e14eb242a3c7aabc03e7c'
    auth_token = 'cc816e19c476dad63cb39f2d00a2ae93'

# set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.account.messages.create({
                                        :from => '+18065132420',
                                        :to => "+1" + "#{number}",
                                        :media_url => "#{url}"
                                    })
    redirect_to '/'
  end

  def send_call
    number = params[:number]
    message = params[:message]
    account_sid = 'AC8e779260a46e14eb242a3c7aabc03e7c'
    auth_token = 'cc816e19c476dad63cb39f2d00a2ae93'

    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.account.calls.create({
                                     :from => '+18065132420',
                                     :to => "+18062068645",
                                     :url => "http://www.directlinkupload.com/uploads/69.27.21.152/Childish%20Gambino%20STN%20MTN%20-%20Pop%20Thieves%20(Make%20it%20Feel%20Good)%20(DatPiff%20Exclusive)_WfO28h.mp3",
                                 })
  end
end
