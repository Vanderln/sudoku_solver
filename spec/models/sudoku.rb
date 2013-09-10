require 'spec_helper'
describe "Sudoku" do
	before :each do
		@string = "0"*81
		@sudoku = Sudoku.new(@string)
	end

	it "takes one parameter and returns a Sudoku object" do
		expect(@sudoku).to be_an_instance_of(Sudoku)
	end

	context "solve! method" do
		it "returns a board string if solved" do
			@string = "539126784482579316617438295791253648854617932326894571968745123275381469143962857"
		  @sudoku = Sudoku.new(@string)
		  @sudoku.solve!
		end

		context "first empty cell method" do
		it "finds the first empty cell" do
			@string = "105802000090076405200400819019007306762083090000061050007600030430020501600308900"
			@sudoku = Sudoku.new(@string)
			expect(@sudoku.find_first_empty).to eq(1)
		end
	end

		it "checks the row contents" do
			@string = "105802000090076405200400819019007306762083090000061050007600030430020501600308900"
			@sudoku = Sudoku.new(@string)
			cell_index = @sudoku.find_first_empty
			expect(@sudoku.check_row_contents(cell_index)).to eq(["1","0","5","8","0","2","0","0","0"])
		end
	end

	context	"possibilities method" do
		it "generates the possible numbers" do
				expect(@sudoku.possibilities).to eq(("1".."9").to_a)
		end
	end


	context "solve? method" do

		it "returns false with an incomplete string" do
			@string = "105802000090076405200400819019007306762083099934561658237689535431123531644368954"
			@sudoku = Sudoku.new(@string)
			expect(@sudoku.solved?).to eq(false)
		end

		it "returns true with a solved string" do
			@string = "539126784482579316617438295791253648854617932326894571968745123275381469143962857"
		  @sudoku = Sudoku.new(@string)
		  expect(@sudoku.solved?).to eq(true)
		end
	end
end


