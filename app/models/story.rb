class Story < ApplicationRecord
  belongs_to :business
  has_many :story_categories, dependent: :destroy
  has_many :categories, through: :story_categories
  has_many :campaigns, dependent: :destroy
end
