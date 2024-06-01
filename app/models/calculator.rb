class Calculator < ApplicationRecord
	def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = ","
    if numbers.start_with?("//")
      delimiter_part, numbers_part = numbers.split("\n", 2)
      delimiter = delimiter_part[2..-1]
      numbers = numbers_part
    end

    numbers.split(/#{Regexp.escape(delimiter)}|\n/).map(&:to_i).sum
  end
end
