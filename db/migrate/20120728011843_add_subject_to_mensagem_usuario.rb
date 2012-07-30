class AddSubjectToMensagemUsuario < ActiveRecord::Migration
  def change
    add_column :mensagem_usuarios, :subject, :string
  end
end
