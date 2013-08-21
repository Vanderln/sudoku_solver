class Sudoku
	attr_reader :string
	def initialize(string)
		@string = string
	end

	def solve!
		possibilities
		find_first_empty
	end

	def possibilities
		("1".."9").to_a
	end

	def find_first_empty
		@string.index("0")
	end
end

s = Sudoku.new("105802000090076405200400819019007306762083090000061050007600030430020501600308900")
p s.solve!
