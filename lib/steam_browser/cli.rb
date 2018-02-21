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
    input = nil
    while input != "q"
      puts "Enter the number of the game you'd like more info on or 'q' to quit."
      input = gets.strip.downcase
      case input
      when "1"
        puts "FreeHolder\n$9.99 (SALE $5.99)\nPositive (83%\n31 Reviews)\nStrategy/RPG/Indie"
      when "2"
        puts "Kerbal Space Program\n$39.99 (Not on Sale)\nOverwhelmingly Positive (95%\n37,887 Reviews)\nSpace/Simulation/Sandbox"
      when "3"
        puts "The Long Dark\n$34.99 (Not on Sale)\nVery Positive (92%\n32,524 Reviews)\nSurvival/Open World/Atmospheric"
      when "4"
        puts "Rimworld \n$29.99 (Not on Sale) \nOverwhelmingly Positive (97%\n17,104 Reviews) \nEarly Access/Base Building/Survival"
      when "5"
        puts "Doom\n$29.99 (Not on Sale)\nVery Positive (92%\n33,579 Reviews)\nFPS/Action/Gore"
      end
    end
  end

end