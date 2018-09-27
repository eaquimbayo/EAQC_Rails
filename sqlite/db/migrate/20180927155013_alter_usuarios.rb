class AlterUsuarios < ActiveRecord::Migration[5.2]
  def up
    rename_table("usuarios", "admin_usuarios")
    add_column("admin_usuarios", "nombreUsuario", :string, :limit => 25, :after => "email")
    change_column("admin_usuarios", "email", :string, :limit => 100)
    rename_column("admin_usuarios", "password", "hashed_password")
    add_index("admin_usuarios", "nombreUsuario")
  end

  def down
    remove_index("admin_usuarios", "nombreUsuario")
    rename_column("admin_usuarios", "hashed_password", "password")
    change_column("admin_usuarios", "email", :string, :default => '',:null => false)
    remove_column("admin_usuarios", "nombreUsuario")
    rename_table("admin_usuarios", "usuarios")
  end
end
