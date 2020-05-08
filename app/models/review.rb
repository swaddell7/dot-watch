class Review < ApplicationRecord
    belongs_to :user
    belongs_to :screenplay
    has_many :likes

    # validations
    validates_presence_of :title, :description, :rating, :screenplay_id
    validates_length_of :title, maximum: 140
    validates_length_of :description, minimum: 50

    def created_at_to_date
      self.created_at.strftime("%B %d, %Y")
    end

    def get_screenplay
      if self.screenplay
        self.screenplay.title
      end   
    end 

    def screenplay_title=(title)
      self.screenplay = Screenplay.find_by(title: title)
    end

    def screenplay_title
      self.screenplay ? self.screenplay.title : nil
    end

    def random_gif
      uri = URI.parse("https://api.giphy.com/v1/gifs/random?api_key=ZnyMwXrNuHSmSQcmbcDFmhiSfFbASYSz&tag=#{search_term}")
      response = Net::HTTP.get_response(uri)
      body = response.body
      gif = JSON.parse(body)
      link = gif["data"]["images"]["original"]["webp"]
      p link
    end

    def search_term
      self.screenplay.title.gsub(/\s+/, "").downcase
    end

    def short_desc
      if self.description
        short_desc = self.description.split(' ')
        short_desc.take(7).join(' ')
      end 
    end

    def short_title
      if self.title
        short_title = self.title.split(' ')
        short_title.take(10).join(' ') + "..."
      end
    end

end
