class Owner < ActiveRecord::Base
  has_many :relations
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
end
