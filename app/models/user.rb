class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username , uniqueness: true
  validates :lastname,:username, presence: true
  validates :zipcode, length: { is: 6 , :message => "should be 6 characters"}
end