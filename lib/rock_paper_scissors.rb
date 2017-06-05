class RockPaperScissors

  	# Exceptions this class can raise:
  	class NoSuchStrategyError < StandardError ; end

  	def self.winner(player1, player2)
		case player1[1] + player2[1]
		when "SP", "RS", "PR" then player1
		when "PS", "SR", "RP" then player2
		when 'PP', 'SS', 'RR' then player1
		else raise NoSuchStrategyError, "Strategy must be one of R,P,S"
		end
  	end

  	def self.tournament_winner(tournament)
    		if tournament[0][0].kind_of?(String)
			winner(tournament[0], tournament[1])
		else
			winner(tournament_winner(tournament[0]), tournament_winner(tournament[1]))
		end
  	end

end
