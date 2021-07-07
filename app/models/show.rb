class Show < ActiveRecord::Base
  
  def self.highest_rating
    Show.maximum(:rating)
  end


  #return the show with the highest rating
  def self.most_popular_show
    #find show by the highest rating
    self.where("rating = ?", self.highest_rating).first
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    self.where("rating = ?", self.lowest_rating).first
  end

  def self.ratings_sum 
    Show.sum(:rating)
  end

  def self.popular_shows
    self.where("rating > ?", 5) #go through all the shows where ratings > ?, greater than 5
  end

  def self.shows_by_alphabetical_order
    self.order(:name)
  end

end