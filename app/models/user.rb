class User < ApplicationRecord
    has_secure_password
    has_many :projects
    has_many :issues, through: :projects
    validates :name, :email, uniqueness: { case_sensitive: false }
end
