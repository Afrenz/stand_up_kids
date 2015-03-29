class Agency < ActiveRecord::Base
  has_many :children
end
