class CreateSubclass < ActiveRecord::Migration[5.2]
  def change
    create_table :subclasses do |t|
      t.string :name
      t.text :desc
    end
  end
end
