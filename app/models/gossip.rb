class Gossip < ApplicationRecord
  belongs_to :user
  has_many :tag_links
  has_many :tags, through: :tag_links

  #Validations
  validates :title, presence: true, length: { in: 1..35, 
  message: "must be between 1 and 25 caracters" }
  validates :content, presence: true, length: { in: 1..150, 
  message: "must be between 1 and 150 caracters" }

end
