class CreateEjemplos < ActiveRecord::Migration[5.0]
  def change
    create_table :ejemplos do |t|
      t.string :nombre
      t.text :contenido

      t.timestamps
    end
  end
end
