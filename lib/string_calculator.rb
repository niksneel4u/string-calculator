# frozen_string_literal: true

# string calculator
class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = /,|\n/
    if numbers.start_with?('//')
      delimiter = numbers[2]
      numbers = numbers[4..]
    end

    numbers.split(/#{delimiter}|\n|,/).map(&:to_i).sum
  end
end
