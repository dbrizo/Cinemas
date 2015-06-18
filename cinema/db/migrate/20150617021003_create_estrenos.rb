class CreateEstrenos < ActiveRecord::Migration
  def change
    create_table :estrenos do |t|
      t.string :Nombre
      t.time :Hora
      t.integer :Sala
      t.boolean :Oferta

      t.timestamps
    end
  end
end
