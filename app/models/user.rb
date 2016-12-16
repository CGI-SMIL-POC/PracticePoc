class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username , presence: { :message => "The Username is required"} ,uniqueness: { :message => "The Username is taken"}
  validates :password, presence: { :message => "The Password is required"}
  validates :password_confirmation, presence: { :message => "The Confirm Password is required"}
  validates :zipcode, presence: { :message => "The Zip Code is required"},
   numericality: { only_integer: true ,:message => "The ZIP Code must be numeric"},
   length: { is: 5 , :message => "The ZIP Code should be 5 characters"}
  validates :email, presence: { :message => "The Email is required"}
  validates :lastname, presence: { :message => "The Last Name is required"}, length: { maximum: 40 }
end