class Review < ApplicationRecord
  belongs_to :menu
  validates :content, length: { minimum: 6 }
end
