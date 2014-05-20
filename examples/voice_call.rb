require 'tropo-webapi-ruby'
require 'sinatra'

post '/index.json' do
	t = Tropo::Generator.new
	# replace +xxx with a valid phone number
	t.call(:to => "+xxx")
	t.say(:value => "You will be connected to our Support Center soon!")
	# Replace +yyyy with a valid phone number;
	t.transfer(:to => "+yyyy")
	
	t.response
end
