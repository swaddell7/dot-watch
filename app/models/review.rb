class Review < ApplicationRecord
    belongs_to :user
    belongs_to :screenplay
    has_many :likes

    # validations
    validates_presence_of :title, :description, :rating, :screenplay_id
    validates_length_of :title, maximum: 140
    validates_length_of :description, minimum: 50

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

end
