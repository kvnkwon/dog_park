class Relation < ActiveRecord::Base
  belongs_to :owner
  belongs_to :dog
  validates_presence_of :owner
  validates_presence_of :dog
end
