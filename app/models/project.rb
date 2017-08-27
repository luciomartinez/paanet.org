class Project < ApplicationRecord
  validates :title, presence: true
  validates :position, :uniqueness => { :message => "posición ya tomada" }
  # Accept only external URIs but can be empty as well
  validates :url, allow_blank: true, :format => {
    :with => /\Ahttp:\/\/|\Ahttps:\/\//,
    :message => "URL no valida, asegúrate de ingresar una dirección con el formato http://google.com"
  }
end
