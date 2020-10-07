class User < ApplicationRecord
    has_many :projects
    has_many :issues, through: :projects
end
