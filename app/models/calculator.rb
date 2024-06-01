class Calculator < ApplicationRecord
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = ","
    if numbers.start_with?("//")
      delimiter_part, numbers_part = numbers.split("\n", 2)
      delimiter = delimiter_part[2..-1]
      numbers = numbers_part
    end

    number_array = numbers.split(/#{Regexp.escape(delimiter)}|\n/).map(&:to_i)
    negative_numbers = number_array.select { |num| num < 0 }

    if negative_numbers.any?
      raise "negative numbers not allowed: #{negative_numbers.join(',')}"
    end

    number_array.sum
  end
end
