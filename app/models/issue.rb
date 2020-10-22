class Issue < ApplicationRecord
  belongs_to :project
  has_many :references, dependent: :destroy
end
