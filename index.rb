require 'sinatra'
require 'freesound'
Freesound.api_key = "d9864448f7648ea0375018be0cb3af965b4f72be"

client = Freesound::Client.new
sound = client.sound(17185)



get '/' do
  #erb :index
  kick = client.search("kick")
  JSON.pretty_generate(kick)
end