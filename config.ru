Bundler.require
Dir["/api/*.rb"].each {|file| require file }
Encapsulate.set_db({name: :awesome})
Encapsulate.set_home_folder(File.dirname(__FILE__))
class Web < Sinatra::Base
  use OmniAuth::Builder do
    provider :facebook, ENV['APP_ID'], ENV['APP_SECRET'], :scope => 'email,read_stream'
  end
end
run Encapsulate.application