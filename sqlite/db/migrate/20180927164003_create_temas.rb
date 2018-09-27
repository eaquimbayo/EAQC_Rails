class CreateTemas < ActiveRecord::Migration[5.2]
  def up
    create_table :tema do |t|
      t.string "nombre"
      t.integer "posicion"
      t.boolean "password"

      t.timestamps
    end
  end

  def down
    drop_table :tema
  end
end
