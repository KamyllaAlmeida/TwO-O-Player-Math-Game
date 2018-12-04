class Game
  attr_accessor :player1, :player2,:last_player, :game_matches

  def initialize(player1, player2) 
    @game_matches = 0
    @player1 = player1
    @player2 = player2
    @last_player = player1

  end

  def print_score
    puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3\n\n"
    if @player1.lives > 0 && @player2.lives > 0
      puts "----- New Turn -----\n\n"
    end
  end

  def print_winner
    winner = @player1
    if @player1.lives < @player2.lives
      winner = @player2
    end
    puts"#{winner.name} wins with a score of #{winner.lives}/3\n\n"
  end


  def question (player)
    @game_matches +=1
    randon_number1 = rand(1..20)
    randon_number2 = rand(1..20)
    puts "#{player.name}: What does #{randon_number1} plus #{randon_number2} equal?\n"
    answer = gets.chomp
    total = randon_number1 + randon_number2
    check = answer.to_i == total.to_i
    if not check
      player.loose_life
    end
  end

  def start
    while @player1.lives > 0 and @player2.lives > 0
      question(@last_player)
      @last_player = @last_player == @player1? @player2 : @player1
      print_score
    end
    print_winner
    puts "----- Game Over -----"
    puts "Good bye!"
  end

end

  


