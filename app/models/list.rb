class List < ActiveRecord::Base

  belongs_to :board
  has_many   :items

  validates_presence_of :name

end
