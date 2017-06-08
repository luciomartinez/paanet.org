class ContactMailer < ApplicationMailer
  def contact_email(name, message, email, phone)
    @name = name
    @body = message
    @email = email
    @phone = phone
    mail(to: 'contacto@paanet.org', subject: 'Pedido de contacto')
  end
end
