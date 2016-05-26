module ApplicationHelper
  def number_to_word(num)
    numbers = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five"}
    numbers[num]
  end
end
