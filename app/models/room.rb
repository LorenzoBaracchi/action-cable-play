class Room < ApplicationRecord
  has_many :messages

  validates_presence_of :title
end
