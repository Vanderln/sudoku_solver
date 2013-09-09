class Sudoku
	attr_reader :board
	def initialize(board_string)
		@board = board_string.split('')
	end

	def solve!
		return @board if solved?
	end

	def possibilities
		("1".."9").to_a
	end

	def find_first_empty
		@board.index("0")
	end

	def solved?
		!@board.include?("0")
	end
end

# s = Sudoku.new("105802000090076405200400819019007306762083090000061050007600030430020501600308900")
# p s.solve!
