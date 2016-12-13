class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username , uniqueness: true , length: { maximum: 50 }
  validates :lastname,:username, presence: true
  validates :zipcode, length: { is: 5 , :message => " should be 5 characters only"}
  validates :zipcode, numericality: { :message => "must be numeric"}
  validates :password , length: { maximum: 20 }
end