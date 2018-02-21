#Our CLI Controller
class SteamBrowser::CLI

  def call
    welcome
    matts_picks
    menu
    goodbye
  end

  def welcome
    puts "Welcome to Steam Browser v0.0.1"
  end

  def matts_picks
    puts "Here's Matt's top 5 game picks:"
    @games = SteamBrowser::Game.matts_picks
    @games.each.with_index(1) do |game, i|
      puts "#{i}, #{game.title}"
    end
  end

  def menu
    input = nil
    while input != "q"
      puts "Enter the number of the game you'd like more info on or 'q' to quit."
      input = gets.strip.downcase

      if input.to_i > 0 && input.to_i <= @games.length
        game_choice = @games[input.to_i-1]
        puts game_choice.title
        puts game_choice.price
        puts game_choice.rating
        puts game_choice.genres
      elsif input == "list"
        matts_picks
      else
        puts "Not a valid input.  Type 'list' or 'q' to quit." unless input == 'q'
      end
    end
  end

  def goodbye
    puts "Thanks for using Steam Browser!"
  end

end
