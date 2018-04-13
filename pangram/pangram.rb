class Pangram
  def self.pangram?(phrase)
    alphabet = ('a'..'z').to_a
    phrase_letters = phrase.downcase.split(%r{\s*})
    (alphabet - phrase_letters).size > 0 ? false : true
  end
end

module BookKeeping
  VERSION = 6
end
