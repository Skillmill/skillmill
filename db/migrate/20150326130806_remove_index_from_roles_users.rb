class RemoveIndexFromRolesUsers < ActiveRecord::Migration
  def change
    remove_index :roles_users, name: :index_roles_users_on_role_id
    remove_index :roles_users, name: :index_roles_users_on_user_id
  end
end
