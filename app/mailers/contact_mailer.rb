class ContactMailer < ApplicationMailer
  def contact_email(name, message, email, phone)
    @name = unless name.blank? then name else 'anonimo' end
    @body = message
    @email = unless email.blank? then email else 'no disponible' end
    @phone = unless phone.blank? then phone else 'no disponible' end
    mail(to: ENV.fetch('CONTACT_EMAIL') { 'contacto@paanet.org' }, subject: 'Paanet Contacto Web')
  end
end
