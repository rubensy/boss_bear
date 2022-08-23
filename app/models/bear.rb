class Bear < ApplicationRecord
  belongs_to :user
  has_one :profile, through: :user, dependent: destroy
  validates :name, presence: true, length: { minimum: 2 }
  validates :personality, presence: true, length: { minimum: 3 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
