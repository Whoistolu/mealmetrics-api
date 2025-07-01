class User < ApplicationRecord
  belongs_to :organization
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
        :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         :jwt_authenticatable,
         jwt_revocation_strategy: Devise::JWT::RevocationStrategies::Null

  ROLES = %w[admin manager staff]

  validates :role, inclusion: { in: ROLES }

  def admin?
    role == 'admin'
  end

  def manager?
    role == 'manager'
  end

  def staff?
    role == 'staff'
  end
end
