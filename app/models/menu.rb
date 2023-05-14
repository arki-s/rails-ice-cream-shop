class Menu < ApplicationRecord
  belongs_to :ice_cream
  belongs_to :topping
  belongs_to :container
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  has_one_attached :photo
  validates :ice_cream, uniqueness: { scope: [:topping, :container] }
  validates :ice_cream_id, presence: true
end
