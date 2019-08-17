class Show < ActiveRecord::Base


  def self.highest_rating
    maximum(:rating)
  end  # ends highest_rating method

  def self.most_popular_show
    self.find_by(rating: highest_rating)
  end  # ends self.most_popular_show method

  def self.lowest_rating
    minimum(:rating)
  end  # ends self.lowest_rating method

  def self.least_popular_show
    self.find_by(rating: lowest_rating)
  end  # ends self.least_popular_show method

  def self.ratings_sum
    self.sum(:rating)
  end  # ends self.ratings_sum method

  def self.popular_shows
    self.all.where("rating > ?", 5)
  end  # ends self.popular_shows method

  def self.shows_by_alphabetical_order 
    self.order(:name)
  end  # ends self.shows_by_alphabetical_order  method

end