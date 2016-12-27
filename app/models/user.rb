class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    def override    
    end
    
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable
    validates :username, presence: { :override => "The Username is required"}, uniqueness: { :override => "The Username is taken"}, length: { maximum: 50}
    validates :password, presence: { :override => "The  Password is required"}, length: { maximum: 20}, :confirmation => true, :on => :create
    validates :password_confirmation, presence: { :override => "The Confirm Password is required"}, length: { maximum: 20}, :confirmation => true, :on => :create
    validates :zipcode, presence: { :override => "The Zip Code is required"},
     numericality: { only_integer: true ,:override => "The ZIP Code must be numeric"},
     length: { is: 5, :override => "The ZIP Code should be 5 characters"}
    validates :email, presence: { :override => "The Email is required"}, length: { maximum: 100}
    validates :lastname, presence: { :override => "The Last Name is required"}, length: { maximum: 40 }
    def email_required?
    false
  end

  def email_changed?
    false
  end
end