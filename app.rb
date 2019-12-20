require 'pry'
require 'sinatra'
require 'sinatra/reloader'
also_reload('lib/**/*.rb')
require './lib/word'

get('/words') do
  @words = Word.all()
  erb(:word)
end

post('/words') do
  user_word = Word.new(params["word"], nil)
  user_word.get_defined(params["definition"])
  user_word.save
  @words = Word.all()
  erb(:word)
end
# get('/words/:word') do
#   word_object = Word.find(params[:word])
#   @definitions = word_object.definitions
#   erb(:definition)
# end
