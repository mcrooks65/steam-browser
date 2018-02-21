class SteamBrowser::Game

  attr_accessor :title, :price, :sale_price, :rating, :genres

  def self.matts_picks
    puts <<-DOC.gsub /^\s*/, ''
      Here's Matt's top 5 game picks:
      1. FreeHolder
      2. Kerbal Space Program
      3. The Long Dark
      4. Rimworld
      5. Doom
    DOC

    game_1 = self.new
    game_1.title = "FreeHolder"
    game_1.price = "$9.99"
    game_1.sale_price = "$5.99"
    game_1.rating = "(83% - 31 Reviews)"
    game_1.genres = "Strategy/RPG/Indie"

  # "Kerbal Space Program\n$39.99 (Not on Sale)\nOverwhelmingly Positive (95% - 37,887 Reviews)\nSpace/Simulation/Sandbox"
  # "The Long Dark\n$34.99 (Not on Sale)\nVery Positive (92% - 32,524 Reviews)\nSurvival/Open World/Atmospheric"
  # "Rimworld \n$29.99 (Not on Sale) \nOverwhelmingly Positive (97% - 17,104 Reviews) \nEarly Access/Base Building/Survival"
  # "Doom\n$29.99 (Not on Sale)\nVery Positive (92% - 33,579 Reviews)\nFPS/Action/Gore"

  end
end
