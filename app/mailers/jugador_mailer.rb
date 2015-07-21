class JugadorMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.jugador.bienvenido.subject
  #
  def bienvenido
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.jugador.tu_turno.subject
  #
  def tu_turno
    @greeting = "Hi"

    mail to: "gonzalo.lema1@gmail.com"
  end
end
