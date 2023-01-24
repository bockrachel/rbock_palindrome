# frozen_string_literal: true

require_relative "rbock_palindrome/version"

# module RbockPalindrome
#   class Error < StandardError; end
#   # Your code goes here...

# end

class String
  def palindrome?
    processed_content == processed_content.reverse
  end

  # Returns the letters in the string
  # def letters
  #   self.chars.select { |c| c.match(/[a-z]/i)}.join
  # end

  private

    def processed_content
      self.scan(/[a-z]/i).join.downcase
    end
end