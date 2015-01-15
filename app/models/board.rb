class Board < ActiveRecord::Base
  has_many :lists
  has_many :items, through: :lists

  validates_presence_of :name

end
