#Our CLI Controller


class SteamBrowser::CLI

  def call
    welcome
    matts_picks
    menu
  end

  def welcome
    puts "Welcome to Steam Browser v0.0.1"
  end

  def matts_picks
    puts <<-DOC.gsub /^\s*/, ''
      Here's Matt's top game picks.
      1. FreeHolder
      2. Kerbal Space Program
      3. The Long Dark
      4. Rimworld
      5. Doom
    DOC
  end

  def menu
    # input = nil
    # while input != "q"
    #   puts "Enter the number of the game you'd like more info on or 'q' to quit."
    #   input = gets.strip.downcase
    #   case input
    #   when "1"
    #     puts "FreeHolder - $9.99 (SALE $5.99) - Strategy/RPG/Survival"
    #   when "2"
  end

end
