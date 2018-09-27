class CreatePaginas < ActiveRecord::Migration[5.2]
  def up
    create_table :Paginas do |t|
      t.integer "tema_id"
      t.string "nombre"
      t.string "enlace"
      t.integer "posicion"
      t.boolean "visible", :default => false

      t.timestamps
    end
    add_index("paginas", "tema_id")
    add_index("paginas", "enlace")
  end

  def down
    drop_table :Paginas
  end
end
