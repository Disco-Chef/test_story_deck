class Business < ApplicationRecord
  belongs_to :user
  has_many :stories, dependent: :destroy
end
