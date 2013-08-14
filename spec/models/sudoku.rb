require 'spec_helper'
describe "Sudoku" do
	before :each do
		a = ""
		num_string = 81.times{a << "0"}
		@sudoku = Sudoku.new(num_string)
	end

	it "takes one parameter and returns a Sudoku object" do
		expect(@sudoku).to be_an_instance_of(Sudoku)
	end
end
