get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:word' do
  @query_word = params[:word]
  @anagrams = Word.anagrams(@query_word) 
  @anagrams = @anagrams.map{ |a| a.anagram }
  erb :index 
end
