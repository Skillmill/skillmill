class Project < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  validates :title, :description, :price, :image, presence: true
  validates :price, numericality: { greater_than: 0 }

  belongs_to :user
  has_many :designs
  belongs_to :category
end
