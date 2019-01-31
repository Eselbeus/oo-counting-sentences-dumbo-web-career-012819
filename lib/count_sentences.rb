require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true 
    else
      return false 
    end  
  end

  def question?
    if self.end_with?("?")
      return true 
    else 
      return false 
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true 
    else 
      return false 
    end
  end

  def count_sentences
    count = 0 
    self.each_char.with_index do |char, i|
      if char == "." &&  self[i - 1] == /[a-zA-Z]/
        count += 1 
      elsif char == "!" && self[i - 1] == /[a-zA-Z]/
        count += 1 
      elsif char == "?"
        count += 1 
      end
    end
    count
  end
end