require 'pry'
require 'sinatra'
require 'sinatra/reloader'
also_reload('lib/**/*.rb')
require './lib/word'

get('/') do
  @words = Word.all()
  erb(:words)
end
get('/words') do
  @words = Word.all()
  erb(:words)
end
get('/words/new') do
  erb(:new_word)
end
post('/words') do
  @word = Word.new(params[:word_input], nil, params[:definition_input])
  @word.save
  @words = Word.all()
  erb(:words)
end

get('/words/:id') do
  @word = Word.find(params[:id].to_i())
  erb(:edit)
end
get('/words/:id/edit') do
  @word = Word.find(params[:id].to_i())
  erb(:edit_word)
end
patch('/words/:id') do
  @word = Word.find(params[:id].to_i())
  @word.update(params[:updated_def])
  @words = Word.all
  erb(:words)
end
patch('/words/:id') do
  @word = Word.find(params[:id].to_i())
  @word.delete_def(" ")
  @words = Word.all
  erb(:words)
end
delete('/words/:id') do
  @word = Word.find(params[:id].to_i())
  @word.delete()
  @words = Word.all
  erb(:words)
end
