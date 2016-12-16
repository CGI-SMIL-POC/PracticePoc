class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username , presence: { :message => "The username is required"} ,uniqueness: { :message => "The username is taken"}
  validates :password, presence: { :message => "The password is required"}
  validates :password_confirmation, presence: { :message => "The confirm password is required"}
  validates :zipcode, presence: { :message => "The zipcode is required"},
   numericality: { only_integer: true ,:message => "The ZIP must be numeric"},
   length: { is: 5 , :message => "ZIP Code should be 5 characters"}
  validates :email, presence: { :message => "The email is required"}
  validates :lastname, presence: { :message => "The lastname is required"}, length: { maximum: 40 }
end