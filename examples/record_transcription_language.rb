require 'tropo-webapi-ruby'
require 'sinatra'

post '/index.json' do
	t = Tropo::Generator.new
	t.call(:to => "+xxx")
	t.record({  :name => 'recording',
				:timeout => 10,
				:maxSilence => 7,
				:maxTime => 60,
				:transcription => { :url => "mailto:xxx@xx.xx",
									:id => "1234",
									:language => "de_DE"},
				:voice => 'Katrin',
				:url => 'http://example.com/recording.rb'
			}) do
				say ({  :value => "Willkommen zur Abfage! Sag uns bitte, wie es dir geht!"})
			end
	t.response
end
