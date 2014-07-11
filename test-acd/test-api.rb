require 'incontact_api'
require 'awesome_print'
require 'json'

ENV['UCN_URL'] = 'https://api.incontact.com'
ENV['UCN_KEY'] = 'AcdViewer@CustomInk:4592889'
ENV['GRANT_TYPE'] = 'password'
ENV['USERNAME'] = 'lister@customink.com'
ENV['PASSWORD'] = 'AcdCustomInk2014'
ENV['SCOPE'] = ''


url = InContactApi::Connection.base.get "/inContactAPI/services/v2.0/agents/states"
response = JSON.parse(url.body)
File.open("response.json","w+") do |f|
	f.write(JSON.pretty_generate(response))
end
	
puts response