class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.string :msg
      t.references :comment, foreign_key: true

      t.timestamps
    end
  end
end
