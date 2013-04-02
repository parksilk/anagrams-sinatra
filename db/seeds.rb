File.open("public/words.txt") do |f|
  f.each_line do |word|
    sorted = word.strip.downcase.split(//).sort.join
    Word.create(:anagram => word.chomp, :sorted => sorted)    
  end
end
