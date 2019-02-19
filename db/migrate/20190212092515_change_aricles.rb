class ChangeAricles < ActiveRecord::Migration[5.2]
  def change

  change_column :aricles, :description, :string
  end
end
