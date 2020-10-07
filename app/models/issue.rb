class Issue < ApplicationRecord
  belongs_to :project
  has_many :references
end
