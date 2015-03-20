class Design < ActiveRecord::Base
  validates :description, :image, :thirdpartycontent, presence: true

  belongs_to :project
end
