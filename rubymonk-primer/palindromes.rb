#Given a sentence, return true if the sentence is a palindrome.

def palindrome?(sentence)
  # Write your code here
  sentence.gsub(/\s+/, '').reverse.downcase == sentence.gsub(/\s+/, '').downcase
end