class Goal < ApplicationRecord
  validates :position, :uniqueness => { :message => "posición ya tomada" }
end
