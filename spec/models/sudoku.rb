require 'spec_helper'
describe "Sudoku" do
	before :each do
		@string = "0"*81
		@sudoku = Sudoku.new(@string)
	end

	it "takes one parameter and returns a Sudoku object" do
		expect(@sudoku).to be_an_instance_of(Sudoku)
	end

	context "solve method" do

		it "generates the possible numbers" do
			expect(@sudoku.possibilities).to eq(("1".."9").to_a)
		end

		it "finds the first empty cell" do
			@string = "105802000090076405200400819019007306762083090000061050007600030430020501600308900"
			pending
		end
	end

	it "tells you if the board is solved" do
		@string = "105802000090076405200400819019007306762083099934561658237689535431123531644368954"
		@sudoku = Sudoku.new(@string)
		expect(@sudoku.solved?).to eq(false)
	end

	it "returns a board string if solved" do
	end
end


