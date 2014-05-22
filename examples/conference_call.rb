require 'tropo-webapi-ruby'
require 'sinatra'

post '/index.json' do
	t = Tropo::Generator.new
	# replace +xxx with a valid phone number
	t.call(:to => "+xxx")
	t.say(:value => "Welcome! The conference call should start soon.")
	# Replace +yyyy with a valid phone number;
	t.conference({:name => 'conference',
                :id => '1234'})

	t.response
end