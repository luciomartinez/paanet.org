class ContactController < ApplicationController
  def index
  end

  def submit
    if verify_recaptcha
      ContactMailer.contact_email(params[:name],
        params[:message],
        params[:email],
        params[:phone]).deliver_now

      flash[:result] = '¡Tu mensaje ha sido enviado!'

      redirect_to '/contacto'
    end
  end
end
