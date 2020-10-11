require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/\.|\?|\!/).delete_if {|character| character.size < 2}.size
    # we split (. , ? , !) to form their own strings within an array, we then iterate over to find any fictional sentences such as (!!),(??),(..)
    #if the sentence size is less then 2 characters then its not really a sentence
  end
end