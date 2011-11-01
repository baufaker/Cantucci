require 'test_helper'

class MensagemUsuarioTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert MensagemUsuario.new.valid?
  end
end
