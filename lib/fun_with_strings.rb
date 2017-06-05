module FunWithStrings
	def palindrome?
		palindrome = self.downcase.gsub(/\W/, '')
		palindrome == palindrome.reverse	
	end

	def count_words
		word_hash = Hash.new
		self.split_words.each do |word|
			word_hash[word] ||= 0
			word_hash[word] += 1
		end
		return word_hash
	end

	def anagram_groups
		# your code here
	end

	def split_words
		self.downcase.gsub(/\W/, ' ').split(/\s+/).delete_if { |word| word == '' }
	end
end

# make all the above functions available as instance methods on Strings:

class String
	include FunWithStrings
end
