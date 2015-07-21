# Preview all emails at http://localhost:3000/rails/mailers/jugador
class JugadorPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/jugador/bienvenido
  def bienvenido
    Jugador.bienvenido
  end

  # Preview this email at http://localhost:3000/rails/mailers/jugador/tu_turno
  def tu_turno
    Jugador.tu_turno
  end

end
