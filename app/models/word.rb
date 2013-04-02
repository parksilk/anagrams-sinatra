class Word < ActiveRecord::Base
  # Remember to create a migration!
  

  # def anagrams(word_eval)
  #   word_eval = word_eval.strip.downcase.split(//).sort.join
  #   Word.where("sorted = ")
  # end

  def self.anagrams(query_word)
    query_word_sort = query_word.strip.downcase.split(//).sort.join
    Word.where("sorted = #{query_word_sort}")
  end

end
