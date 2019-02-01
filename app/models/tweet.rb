class Tweet < ActiveRecord::Base 
  belongs_to :user
  
  def slug
    self.title.downcase.gsub("","-")
  end
  
  def self.find_bY_slug(slug)
    self.all.find {|tweet| tweet.slug == slug}
  end
end