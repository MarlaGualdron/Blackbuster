class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :registerable,:recoverable, :rememberable,
         :validatable, :database_authenticatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist
  validates :name, :last_name,  presence: true

  def admin?
    self.admin == true
  end 
end
