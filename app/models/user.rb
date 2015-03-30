class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

  has_many :projects, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :active_posts, class_name: "Design", foreign_key: "customer_id"
  has_many :submitted_designs, class_name: "Design", foreign_key: "designer_id"
end
