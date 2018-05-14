class Game

  def initialize
    @pc = ["r","p","s"]
  end

  def ask_user
    puts 'Welcome :)'
    puts 'Please chose a weapon: r/p/s'
  end

  def input_user
    @player = player
    puts "You chose: #{@player}"
  end

  def pc_move
    @pc_weapon = pc_weapon
    puts "Computer weapon is : #{@pc_weapon}"
  end
# test looking for Draw all the time! I do not know why!
# program works good. Deleting first 'if' statement, test looks fine!
  def result
    if @player == @pc_weapon
      puts 'Is a Draw'
    elsif @player == 'r' && @pc_weapon == 'p' ||
          @player == 'p' && @pc_weapon == 's' ||
          @player == 's' && @pc_weapon == 'r'
      puts 'Player Lost'
    else
      puts 'Player Won'
    end
  end

  def pc_weapon
    @pc[rand(3)]
  end

  def player
    gets.chomp
  end
end
