class CreateTipos < ActiveRecord::Migration
  def change
    create_table :tipos do |t|
      t.string :descricao

      t.timestamps null: false
    end
  end
end
