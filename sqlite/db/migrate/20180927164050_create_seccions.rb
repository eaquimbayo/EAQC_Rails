class CreateSeccions < ActiveRecord::Migration[5.2]
  def up
    create_table :seccions do |t|
      t.integer "pagina_id_"
      t.string "nombre"
      t.integer "posicion"
      t.boolean "visible", :default => false
      t.string "tipo_contenido"
      t.text "contenido"

      t.timestamps
    end
  end

  def down
    drop_table :seccions
  end
end
