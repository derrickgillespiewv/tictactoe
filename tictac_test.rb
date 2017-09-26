require "minitest/autorun"
require_relative "tictac.rb"
class TestTicTac < Minitest::Test

  	def test_1_to_1
 		assert_equal(1,1)
	end  

	def test_first_spot
		board = ['1','2','3','4','5','6','7','8','9']
		assert_equal(['x','2','3','4','5','6','7','8','9'], update_move(board, 'x', '1'))
	end
end