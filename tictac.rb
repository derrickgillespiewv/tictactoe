# heck board state
# check player symbol
# check user input
# is move available
# update board
# change players

def update_move(board, player, position)
	board[position.to_i - 1] = player
	board
end

def spot_open(board, position)
	if board[position - 1] == 'x' || board[position - 1] == 'o'
		false
	elsif position>= 10 || position<= 0
		false
	else
		true
	end
end

def change_player(player)
	if player == 'x'
		player = 'o'
		player 
	elsif player == 'o'
		player = 'x'
		player 
else
end
end


def set_character(yes_or_no)
	until yes_or_no == 'y' or yes_or_no == 'n'
	p 'Would you like to play Tic-Tac-Toe?(y or n)'
	yes_or_no = gets.chomp
	if yes_or_no == 'y'
	player_choice = ['x','o']
	player_one = player_choice.delete(player_choice.sample)

	player_two = player_choice.sample
	p "Player One is #{player_one}"
	p "Player Two is #{player_two}"
	player_one
	elsif yes_or_no == 'n'
	puts 'See ya next time then'
	else
	print 'Please enter a valid character'
end
end
end

def set_board
	board = ['1','2','3','4','5','6','7','8','9']
	p "||=============||"
	p "|| #{board[0]} || #{board[1]} || #{board[2]} ||"
	p "||=============||"
	p "|| #{board[3]} || #{board[4]} || #{board[5]} ||"
	p "||=============||"
	p "|| #{board[6]} || #{board[7]} || #{board[8]} ||"
	p "||=============||"
	board
end

def win_state(board)
    if board[0] == "x" && board[3] == "x" && board[6] == "x"  || board[0] == "o" && board[3] == "o" && board[6] == "o"
        true
    elsif board[1] == "x" && board[4] == "x" && board[7] == "x" || board[1] == "o" && board[4] == "o" && board[7] == "o"
        true
    elsif board[2] == "x" && board[5] == "x" && board[8] == "x"  || board[2] == "o" && board[5] == "o" && board[8] == "o"
        true
    elsif board[0] == "x" && board[1] == "x" && board[2] == "x"  || board[0] == "o" && board[1] == "o" && board[2] == "o"
        true
    elsif board[3] == "x" && board[4] == "x" && board[5] == "x"  || board[3] == "o" && board[4] == "o" && board[5] == "o"
        true
    elsif board[6] == "x" && board[7] == "x" && board[8] == "x"  || board[6] == "o" && board[7] == "o" && board[8] == "o"
        true
    elsif board[0] == "x" && board[4] == "x" && board[8] == "x"  || board[0] == "o" && board[4] == "o" && board[8] == "o"
        true
    elsif board[2] == "x" && board[4] == "x" && board[6] == "x"  || board[2] == "o" && board[4] == "o" && board[6] == "o"
        true
    else
        false
    end
end

def test_for_full_board(board)
    if board.all? {|space| space.include?("x") || space.include?("o")}
        board_full = true
    else
        board_full = false
    end
end
set_board