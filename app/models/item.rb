class Item < ApplicationRecord
  has_many :images, dependent: :destroy
  has_many :categories, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :images
  accepts_nested_attributes_for :categories
  validates :name, {presence: true, length: {maximum: 40}}
  has_many :users, through: :user_items
end
