class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :rua
      t.string :cidade
      t.string :estado
      t.references :contato, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
