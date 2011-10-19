class CreateMensagemUsuarios < ActiveRecord::Migration
  def self.up
    create_table :mensagem_usuarios do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :message
      t.timestamps
    end
  end

  def self.down
    drop_table :mensagem_usuarios
  end
end
