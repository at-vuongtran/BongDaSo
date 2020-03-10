class Permission < ApplicationRecord
  has_many :roles_permissions
  has_many :roles, through: :roles_permissions
  acts_as_paranoid
end
