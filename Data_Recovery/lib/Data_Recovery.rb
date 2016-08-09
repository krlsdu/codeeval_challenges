
module DataRecovery

  def self.split_words_hints(sentence_shuffled)

    sentence_shuffled = sentence_shuffled.split(';')
    words = sentence_shuffled[0].split(" ")
    hints = sentence_shuffled[1].split(" ")

    size = words.size
    hints = find_number_missing(hints,size)
    sentence = zip_words_position(words,hints)

    result = []

    sentence.each{|x,y|
      result.insert(x,y)
    }

    puts   result* " "

  end

  def self.find_number_missing(hints,size)

    hints = hints.map(&:to_i)
    complete = (1..size).to_a
    hints|complete

  end

  def self.zip_words_position(words,hints)

    words_organized = hints.zip words
    words_organized.sort
  end
end

File.open(ARGV[0]).each_line do |line|
  DataRecovery.split_words_hints line

end
