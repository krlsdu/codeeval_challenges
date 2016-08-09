# require "Data_Recovery/version"

module DataRecovery
  def self.split_words_hints(sentence_shuffled)
    sentence_shuffled = sentence_shuffled.split(';')
    words = sentence_shuffled[0].scan(/\w+/)
    hints = sentence_shuffled[1].scan(/\w+/)

    all_hints = find_number_missing(hints)
    print all_hints
  end
  def self.find_number_missing(hints)
   hints = hints.map(&:to_i)
   complete = (hints.min..hints.max).to_a
   hints|complete
  end
end

File.open(ARGV[0]).each_line do |line|
  DataRecovery.split_words_hints line

end
