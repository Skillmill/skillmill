class Design < ActiveRecord::Base
  validates :description, :image, :thirdpartycontent, presence: true

  belongs_to :project
  belongs_to :designer, class_name: "User"
  belongs_to :customer, class_name: "User"
end
