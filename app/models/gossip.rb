class Gossip < ApplicationRecord
  belongs_to :user
  has_many :tag_links
  has_many :tags, through: :tag_links
end
