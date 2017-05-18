##############################
#### MANIPULATING HASHES ####
##############################
#character_count
  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash

  def character_count word
    word.downcase!
  word_array = word.split("")
  counts = {}
  word_array.each do |letter|
    counts[letter] = 0 unless counts.include?(letter)
    counts[letter] += 1
    end
    counts
  end


## STRETCH ##
#word_count
  # takes in a string
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z
  # returns a hash with all the words and their counts

  def word_count (word)
      word_no_wcharac = word.downcase.gsub(/[^a-z\s]/i, '')
      word_array = word_no_wcharac.split(" ")
      counts = {}
      word_array.each do |word|
      counts[word] = 0 unless counts.include?(word)
      counts[word] += 1
      end
      counts
    end

## STRETCH ##
#most_frequent_word
  # takes in a string
  # finds the word in a string that appears with the most frequency
