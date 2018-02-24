#Our CLI Controller
class SteamBrowser::CLI

  def call
    welcome
    menu # matts_picks/matts_menu
    goodbye
  end

  def welcome
    puts "Welcome to Steam Browser v#{SteamBrowser::VERSION}"
  end

  def menu
    input = nil
    while input != "q"

      puts "1. Matt's Picks"
      puts "2. Search by Game Title (Experimental)"
      puts "q. Quit Steam Browser"

      input = gets.strip.downcase

      if input == "1"
        matts_picks
        matts_menu
      elsif input == "2"
        search_by_title
      else
        puts "Not a valid input.  Select a function or 'q' to quit." unless input == 'q'
      end
    end
  end

  def matts_picks
    puts "Here's Matt's top 5 game picks:"
    @games = SteamBrowser::Game.matts_picks
    @games.each.with_index(1) do |game, i|
      puts "#{i}. #{game.title}"
    end
    puts "5. Doom (NOT WORKING AGE VERIFICAITON REQUIRED)" # Reminder placeholder while age verify fix is figured out.
  end

  def matts_menu
    input = nil
    while input != "b"
      puts "Enter the number of the game you'd like more info on or 'b' to go back to the main menu."
      input = gets.strip.downcase

      if input.to_i > 0 && input.to_i <= @games.length
        game_choice = @games[input.to_i-1]

        puts game_choice.title
        puts game_choice.price
        puts game_choice.desc
        puts game_choice.rating
        puts game_choice.genres

      elsif input == "list"
        matts_picks
      else
        puts "Not a valid input.  Type 'list' or 'b' to go back to the main menu." unless input == 'b'
      end
    end
  end

  def search_by_title

  end

  def goodbye
    puts "Thanks for using Steam Browser!"
  end

end
