class SteamBrowser::Game

  attr_accessor :title, :price, :rating, :genres  #Add :desc later for game descriptions.  Also consider adding :developer and :publisher as well.  And :sale_price.

  MATTS_PICKS = ["FreeHolder", "Kerbal Space Program", "The Long Dark", "Rimworld", "Doom"] # NEED TO FIX SO DOOM CAN BE READ (AGE VERIFICAITON PAGE BLOCKING SCRAPER)

  def self.matts_picks   # Matt's picks should take a hardcoded constant array of 5 game titles and then calls the scraper to scrape the appropriate Steam webpages to fill out game data.

    # Run scrape_by_title on each of MATTS_PICKS and load into different game_#'s local variables.
    game_1 = self.scrape_by_title(MATTS_PICKS[0])
    game_2 = self.scrape_by_title(MATTS_PICKS[1])
    game_3 = self.scrape_by_title(MATTS_PICKS[2])
    game_4 = self.scrape_by_title(MATTS_PICKS[3])
    #game_5 = self.scrape_by_title(MATTS_PICKS[4]) # Scraping the Doom store page is currently being blocked by AGE VERIFICATION. This is a tough fix...

    [game_1, game_2, game_3, game_4] #game_5
  end

  def self.scrape_by_title(title) # Class method should take one argument, a game title string, and scrape the appropriate steam store page for data and then return that Game object.
    game = self.new # Create new Game object called game

    search_doc = Nokogiri::HTML(open("http://store.steampowered.com/search/?term=#{title}")) # First search
    target_url = search_doc.search("#search_result_container > div:nth-child(2) > a:nth-child(2)").first.attr("href").strip # Search target url acquisition

    doc = Nokogiri::HTML(open(target_url)) # Load doc with new search target url

    # Load game object with the appropriate scraped data from target_url
    game.title = doc.search("div.apphub_AppName").text
    game.price = doc.search("div.game_purchase_price.price").first.text.strip
    game.rating = doc.search("div.user_reviews_summary_row").first.attr("data-store-tooltip").strip
    game.genres = doc.search("div.glance_tags.popular_tags").text.strip.gsub("\t", "").gsub("\r", "").gsub("\n", "/").gsub("+", "")

    game # Return game object
  end
end
