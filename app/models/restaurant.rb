class Restaurant < ApplicationRecord
  has_many :reviews, :dependent => :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: ["chinese", "japanese", "french", "belgian", "italian"]}
end
