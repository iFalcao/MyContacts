class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.string :nome
      t.string :email
      t.references :tipo, index: true, foreign_key: true
      t.text :observacao

      t.timestamps null: false
    end
  end
end
