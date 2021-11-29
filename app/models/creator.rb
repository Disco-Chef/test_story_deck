class Creator < ApplicationRecord
  belongs_to :user
  has_many :creator_categories, dependent: :destroy
  has_many :categories, through: :creator_categories
end
