class CreateMensagemUsuarios < ActiveRecord::Migration
  def change
    create_table :mensagem_usuarios do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :message

      t.timestamps
    end
  end
end
