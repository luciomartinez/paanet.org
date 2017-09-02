class ContactMailer < ApplicationMailer
  def contact_email(name, message, email, phone)
    @name = name || 'anonimo'
    @body = message
    @email = email || 'no disponible'
    @phone = phone || 'no disponible'
    mail(to: ENV.fetch('CONTACT_EMAIL') { 'contacto@paanet.org' },
        from: 'notificaciones@paanet.org',
        subject: 'Contacto Web')
  end
end
