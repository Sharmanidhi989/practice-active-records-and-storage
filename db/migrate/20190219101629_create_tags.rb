class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :msg
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
