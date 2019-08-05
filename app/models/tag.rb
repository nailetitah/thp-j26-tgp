class Tag < ApplicationRecord
  has_many :tag_links
  has_many :gossips, through: :tag_links
end
