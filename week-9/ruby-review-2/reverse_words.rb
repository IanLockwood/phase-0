# Reverse Words

# I worked on this challenge by myself.
# This challenge took me 1 hours.

# Pseudocode
# SPLIT the sentence into words
# REVERSE each word
# JOIN the sentence
# PRINT it

# Solution

def reverse_words(sentence)
	new_sentence = sentence.split
	new_sentence.map {|x| x.reverse!}
	return new_sentence.join(" ")
end


# Reflection

# What concepts did you review in this challenge?
# 	Playing with strings and iteration!

# What is still confusing to you about Ruby?
# 	It's so simple compared to JavaScript that it seems oddly imprecise.

# What are you going to study to get more prepared for Phase 1?
# 	Hmm... I think I'll just go through the ruby docs and learn more built-in methods!