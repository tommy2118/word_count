class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase

  end

  def word_count
    counted_words = {}
    count = 0
    no_punc = phrase.gsub(/[^a-zA-Z0-9_'"]/, ' ')
    words = no_punc.downcase.split(" ")

    words.each do |word|
      word.gsub!(/^[']|[']\z/, '')
      count = words.count(word)
      counted_words[word] = count
      count = 0
    end

    counted_words
  end
end
