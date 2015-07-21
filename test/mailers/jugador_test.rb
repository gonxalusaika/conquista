require 'test_helper'

class JugadorTest < ActionMailer::TestCase
  test "bienvenido" do
    mail = Jugador.bienvenido
    assert_equal "Bienvenido", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "tu_turno" do
    mail = Jugador.tu_turno
    assert_equal "Tu turno", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
