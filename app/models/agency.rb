class Agency < ActiveRecord::Base
  has_many :children

  def self.all 
  end

  def self.find(id)
    all.find do |agency|
      agency.id == id
    end
  end

  def self.search(pattern)
    all.select do |agency|
      agency.name.downcase.include?(pattern.downcase) ||
      agency.city.downcase.include?(pattern.downcase) ||
      agency.state.downcase.include?(pattern.downcase)
    end
  end
end
