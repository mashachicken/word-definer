require 'pry'
require 'sinatra'
require 'sinatra/reloader'
also_reload('lib/**/*.rb')
require './lib/word'

get('/words') do
  @words = Word.all()
  erb(:word)
end
