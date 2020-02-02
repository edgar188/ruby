# lines_count = 0
# text = ''

# File.open("text.txt").each do|line|
#     lines_count += 1
#     text += line
# end

# puts lines_count
# puts text

#puts "this is an example-text".scan(/\w+/).length
#puts "this is an example-text".split.length

lines = File.readlines("text.txt")
text = lines.join

total_char = text.length
total_char_nospaces = text.gsub(/\s+/, "").length
all_words = text.split;
total_words = all_words.length;
total_sentences = text.split(/\.|\?|!/).length
total_paragraph = text.split(/\n\n/).length
aver_words_in_sent = total_words / total_sentences
aver_sent_in_parag = total_sentences / total_paragraph

stopwords = %w{the a by on for of are with just but and to the my I has some in}

keywords = all_words.reject do |word|
    stopwords.include?(word)
end
# keywords = all_words.select do |word|
#     !stopwords.include?(word)
# end

total_keywords = keywords.length
keywords_percentage = (total_keywords.to_f / total_words.to_f * 100).to_i

