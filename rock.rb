#challenge source: http://www.reddit.com/r/dailyprogrammer/comments/23lfrf/4212014_challenge_159_easy_rock_paper_scissors/

puts "Welcome to Rock, Paper, Scissors, Lizard, Spock"
puts "What is your throw?"

$winning_throws = {rock: {lizard: "crushes", scissors: "crushes"}, paper: {rock: "covers", spock: "disproves"}, scissors: {paper: "cuts", lizard: "decapitate"}, lizard: {spock: "poisons", paper: "eats"}, spock: {scissors: "smashes", rock: "vaporizes"}}

throw = gets.chomp
user_throw = throw.capitalize

case user_throw
	when "Rock"
		puts "You threw Rock"
	when "Paper"
		puts "You threw Paper"
	when "Scissors"
		puts "You threw Scissors"
	when "Lizard"
		puts "You threw Lizard"
	when "Spock"
		puts "You threw Spock"
	else
		puts "You fucked up. I don't want to play with someone as dumb as you."
end

computer_options = {1 => "Rock", 2 => "Paper", 3 => "Scissors", 4 => "Lizard", 5 => "Spock"}

random_toss = 1 + rand(5)
computer_throw = computer_options[random_toss]

puts "The computer threw #{computer_throw}"

def determine_winner(user, computer)
	user_symbolized = user.downcase.to_sym
	comp_symbolized = computer.downcase.to_sym

	if $winning_throws[user_symbolized][comp_symbolized]
		puts "#{user} #{$winning_throws[user_symbolized][comp_symbolized]} #{computer} - You win!!"
	elsif $winning_throws[comp_symbolized][user_symbolized]
		puts "#{computer} #{$winning_throws[comp_symbolized][user_symbolized]} #{user} - You lose!!"
	else puts "It's a tie. Lame..."
	end
end

determine_winner(user_throw, computer_throw)



