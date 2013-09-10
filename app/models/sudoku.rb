class Sudoku
	attr_reader :board
	def initialize(board_string)
		@board = board_string.split('')
	end

	def solve!
		return @board if solved?
		cell_index = find_first_empty
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

	def check_row_contents(cell_index)
		row_index = cell_index / 9
		@board.each_slice(9).to_a[row_index]
	end
end

# s = Sudoku.new("105802000090076405200400819019007306762083090000061050007600030430020501600308900")
# p s.solve!
