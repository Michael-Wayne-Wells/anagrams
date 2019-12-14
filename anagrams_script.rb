#!/usr/bin/ruby
require('./lib/anagrams')

puts File.read('./lib/title.txt')
puts "Welcome to Anagram Checker!"
puts "enter first word:"
word1 = gets.chomp
puts "enter second word:"
word2 = gets.chomp

user = Anagrams.new(word1, word2)
puts "Would you like our premium package?"
puts "It includes upgraded word confirmation and palindrome checker?"
puts "enter 'y' for premium or 'n' for standard"
this_mode = gets.chomp
if this_mode === "y"
  user.word_check?
  puts "premium word checker:"
  puts "real words: #{user.real_words.join(' ')}"
  puts "fake words: #{user.fake_words.join(' ')}"
  puts "Anagram and Anitgram checker:"
  puts user.gram_check
  puts "Palindrome checker"
  puts user.palindrome_check(user.word1)
  puts user.palindrome_check(user.word2)

else
  puts "Anagram and Anitgram checker:"
  puts user.word_check?
end
