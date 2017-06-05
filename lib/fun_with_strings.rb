module FunWithStrings
	def palindrome?
		palindrome = self.downcase.gsub(/\W/, '')
		palindrome == palindrome.reverse	
	end

	def count_words
		word_hash = {}
		self.split_into_words.each do |word|
			word_hash[word] ||= 0
			word_hash[word] += 1
		end
		word_hash
	end

	def anagram_groups
		# your code here
	end
end

# make all the above functions available as instance methods on Strings:

class String
	include FunWithStrings
end
