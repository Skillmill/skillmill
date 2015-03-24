class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true

  has_and_belongs_to_many :roles
  has_many :projects, dependent: :destroy
  has_many :active_posts, class_name: "Design", foreign_key: "customer_id"
  has_many :submitted_designs, class_name: "Design", foreign_key: "designer_id"
end
