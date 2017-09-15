require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')

get('/') do
  @alert_message = ""
  @list = Word.all
  erb(:word_list)
end

post('/') do
  word_name = params["word_name"]
  definition = params["definition"]
  @alert_message = ""
  if (word_name == "" || definition == "")
    @alert_message = "Please fill in all the fields :-)"
  else
    Word.new({word_name: word_name, definition: definition}).save
  end
  @list = Word.all
  erb(:word_list)
end

post('/clear') do
  Word.clear
  @alert_message = ""
  @list = Word.all
  erb(:word_list)
end

get('/word_specifics/:id') do
  @word = Word.find(params[:id])
  erb(:word_specifics)
end
