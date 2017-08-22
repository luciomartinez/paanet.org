class Project < ApplicationRecord
  validates :title, presence: true
  validates :position, uniqueness: true
end
