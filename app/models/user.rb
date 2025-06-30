class User < ApplicationRecord
  belongs_to :organization
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { admin: 'admin', manager: 'manager', staff: 'staff' }
end
