require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'

# put your own credentials here
account_sid = 'AC44747a07c4a03e1602c28191d8e335d6'
auth_token = '9f949eb83d74b4808ab773f760cfb4a5'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token

@client.account.messages.create({
  :from => '+15102414092',
  :to => '+17142329647', 
  :body => 'Hey bitch',
  :media_url => 'https://c1.staticflickr.com/3/2899/14341091933_1e92e62d12_b.jpg',
})