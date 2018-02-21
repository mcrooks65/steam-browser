class SteamBrowser::Game

  attr_accessor :title, :price, :sale_price, :rating, :genres

  MATTS_PICKS = ["FreeHolder", "Kerbal Space Program", "The Long Dark", "Rimworld", "Doom"]

  def self.matts_picks   # Matt's picks should have a hardcoded array of 5 game titles and then calls the scraper to scrape the appropriate Steam webpages to fill out game data.

    self.scrape_by_title(MATTS_PICKS[0]) # This line should do what the 6 lines below do...

    game_1 = self.new
    game_1.title = "FreeHolder"
    game_1.price = "$9.99"
    game_1.sale_price = "$5.99"
    game_1.rating = "Positive (83% - 31 Reviews)"
    game_1.genres = "Strategy/RPG/Indie"

    self.scrape_by_title(MATTS_PICKS[1])

    game_2 = self.new
    game_2.title = "Kerbal Space Program"
    game_2.price = "$39.99"
    game_2.sale_price = nil
    game_2.rating = "Overwhelmingly Positive (95% - 37,887 Reviews)"
    game_2.genres = "Space/Simulation/Sandbox"

    self.scrape_by_title(MATTS_PICKS[2])

    game_3 = self.new
    game_3.title = "The Long Dark"
    game_3.price = "$34.99"
    game_3.sale_price = nil
    game_3.rating = "Very Positive (92% - 32,524 Reviews)"
    game_3.genres = "Survival/Open World/Atmospheric"

    self.scrape_by_title(MATTS_PICKS[3])

    game_4 = self.new
    game_4.title = "Rimworld"
    game_4.price = "$29.99"
    game_4.sale_price = nil
    game_4.rating = "Overwhelmingly Positive (97% - 17,104 Reviews)"
    game_4.genres = "Early Access/Base Building/Survival"

    self.scrape_by_title(MATTS_PICKS[4])

    game_5 = self.new
    game_5.title = "Doom"
    game_5.price = "$29.99"
    game_5.sale_price = nil
    game_5.rating = "Very Positive (92% - 33,579 Reviews)"
    game_5.genres = "FPS/Action/Gore"

    [game_1, game_2, game_3, game_4, game_5]
  end

  def self.scrape_by_title(title) # Class method should take one argument, a game title string, and scrape the appropriate steam store page for data and then return that Game object.

  end
end
