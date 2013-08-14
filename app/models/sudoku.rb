class Sudoku
	def initialize(string)
		@string = string
	end

	def solve!(string)
		possibilities
	end

	def possibilities
		("1".."9").to_a
	end
end
