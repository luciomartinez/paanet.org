class Goal < ApplicationRecord
  validates :position, uniqueness: true
end
