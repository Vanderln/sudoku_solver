require 'spec_helper'
describe "Sudoku" do
	before :each do
		a = ""
		@string = 81.times{a << "0"}
		@sudoku = Sudoku.new(@string)
	end

	it "takes one parameter and returns a Sudoku object" do
		expect(@sudoku).to be_an_instance_of(Sudoku)
	end

	context "solve method" do
		it "exists" do
			expect(@sudoku.solve!(@string))
		end
	end
end


