require 'sinatra'
require_relative 'say-to-mp3'

set :bind, '0.0.0.0'

get "/:sentence.mp3" do
  sentence = params[:sentence].gsub('+', ' ')
  mp3 = say_to_mp3(sentence)
  send_file mp3.path, type: :mp3
end
