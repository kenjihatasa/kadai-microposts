class AddMicropostToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :micropost, foreign_key: true
  end
end
