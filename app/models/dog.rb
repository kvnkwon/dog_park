class Dog < ActiveRecord::Base
  has_many :relations
  validates_presence_of :name
end
