class AddAvatarToAricles < ActiveRecord::Migration[5.2]
  def change
    add_column :aricles, :avatar, :image
  end
end
