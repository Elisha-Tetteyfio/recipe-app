class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods

  validates :name, :description, presence: true
  validates :preparation_time, :cooking_time, numericality: true
end
