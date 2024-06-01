class Calculator < ApplicationRecord
	def self.add(numbers)
		return 0 if numbers.empty?
		numbers.split(',').map(&:to_i).sum
	end
end
