require 'sinatra'
require 'freesound'
require 'multi_json'
require 'json'

Freesound.api_key = "d9864448f7648ea0375018be0cb3af965b4f72be"

client = Freesound::Client.new
sound = client.sound(17185)



get '/' do
  erb :index
  obj =  client.search("kick")
  puts obj.to_json
end