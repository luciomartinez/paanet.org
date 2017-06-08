class ContactController < ApplicationController
  def index
  end

  def submit
    ContactMailer.contact_email(params[:name],
      params[:message],
      params[:email],
      params[:phone]).deliver_later

    flash[:result] = 'Mensaje enviado! Ahora estamos en contacto :-)'

    redirect_to '/contacto'
  end
end
