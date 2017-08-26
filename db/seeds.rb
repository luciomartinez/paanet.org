# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
case Rails.env
when "development"

  Goal.create([
    { position: 1, body: 'Nuestro objetivo principal', important: true },
    { position: 2, body: 'Objetivo secundario' }
  ])

  Project.create([
    { position: 1, title: 'Nuestro proyecto', url: 'http://facebook.com/paanet.org', description: 'Primer proyecto de la organización tiene vigencia hoy en día.' },
    { position: 2, title: 'Nuevo proyecto', description: 'Último proyecto proveniente de la idea de la nueva integrante de la organización.' }
  ])

when "production"
  # try to skip it.
end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?