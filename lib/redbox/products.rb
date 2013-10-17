module RedBox

  class Products

    attr_accessor :api_key

    include HTTParty

    base_uri 'https://api.redbox.com/v3'

    def initialize(api_key=HideFromGit.new.api_key)
      self.api_key = api_key
    end


    def get_movies_coming_soon
      self.class.get("/products/movies/comingsoon?apiKey=#{self.api_key}").parsed_response["Products"]["Movie"]
    end

    private

  end

end