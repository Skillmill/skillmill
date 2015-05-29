class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # enabling :role (customer or creative) during sign-up process
  attr_accessor :role  
  before_save :assign_roles

  validates :role, :first_name, :last_name, :email, presence: true
  validates_format_of :email, :with => /@/
  
  has_many :projects, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :active_posts, class_name: "Design", foreign_key: "customer_id"
  has_many :submitted_designs, class_name: "Design", foreign_key: "designer_id"

  def assign_roles
    write_attribute(:customer , true) if self.role == 'customer'
    write_attribute(:creative , true) if self.role == 'creative'
  end

  def creative?
    self.role == "creative"
  end

  def customer?
    self.role == "customer"
  end

end
