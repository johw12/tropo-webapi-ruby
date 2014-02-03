require 'tropo-webapi-ruby'
require 'sinatra'

post '/index.json' do
	t = Tropo::Generator.new
	t.call(:to => "+xxxxx")
	t.start_recording(:url => "http://example.com/recording.rb", :transcriptionOutURI => "mailto:xxxx@xxx.xx", :transcriptionLanguage => "de_DE")
	
	t.ask :name => 'color', 
        :attempts => 3,
		:recognizer => "de-de",
        :say => {:value => "Welche ist deine Lieblingsfarbe? Rot, Grün oder Blau."},
        :voice =>"Katrin",
		:choices => {:value => "Rot , Grün, Blau"}
	
	t.stop_recording
	
	t.response
end
