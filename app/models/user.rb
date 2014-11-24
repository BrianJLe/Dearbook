class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, 
                  :last_name, :quote, :cohort, :image
  # attr_accessible :title, :body

  has_many :codes
  mount_uploader :image, ImageUploader

  validates_each :validate_code

end
