class Category < ActiveRecord::Base
  has_many :projects
  validates :category_id, presence: true
end
