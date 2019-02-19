class AddDivisonToClassroom < ActiveRecord::Migration[5.2]
  def change
    add_column :classrooms, :division, :string
  end
end
