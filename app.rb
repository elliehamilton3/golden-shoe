# myapp.rb
require 'sinatra/base'
require 'bot/listen'

class MyApp < Sinatra::Base

  configure do
    set :app_file, __FILE__
  end

  get '/' do
    erb :index
  end

  get '/frank-says' do
    'Put this in your pipe & smoke it!'
  end

  get '/chat' do
    erb :chat
  end

  get '/bot' do
    mount Facebook::Messenger::Server
  end
end
