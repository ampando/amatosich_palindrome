# frozen_string_literal: true

require_relative "amatosich_palindrome/version"

  class Error < StandardError; end
  
  class String
  
  # Returns true for a palindrome, false otherwise 
  def palindrome? 
    processed_content == processed_content.reverse
  end 

  # Returns the letters in the string. (interate thru letters, put in array, join at end)
  def letters
   self.chars.select { |c| c.match(/[a-z]/i) }.join
  end 
  
    private
    
    # Returns content for palindrome testing.
    def processed_content
      self.letters.downcase
    end 
  end 


