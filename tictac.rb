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

def change_player(current_player)
	if current_player == 'x'
		new_player = 'o'
	elsif current_player == 'o'
		new_player = 'x'
	else
		new_player
	end
end

def set_game(yes_or_no)
	board = ['1','2','3','4','5','6','7','8','9']
end