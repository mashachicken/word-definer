require 'pry'
require 'sinatra'
require 'sinatra/reloader'
also_reload('lib/**/*.rb')
require './lib/word'

get('/') do
  @words = Word.all()
  erb(:word)
end
get('/words') do
  @words = Word.all()
  erb(:word)
end
get('/words/new') do
  erb(:new_word)
end
post('/words') do
  user_word = Word.new(params[:wordInput], nil)
  user_word.get_defined(params[:definitionInput])
  user_word.save
  @words = Word.all()
  erb(:word)
end

get('/words/:id') do
  @word = Word.find(params[:id].to_i())
  # @definitions = word_search.definitions
  erb(:edit)
end
