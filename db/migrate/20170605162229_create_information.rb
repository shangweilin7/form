class CreateInformation < ActiveRecord::Migration[5.1]
  def change
    create_table :information do |t|
      t.integer :user_id
      t.integer :field_id
      t.text :data

      t.timestamps
    end
  end
end
