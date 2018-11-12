class CreateUserDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :user_destinations do |t|
      t.integer :destination_id
      t.integer :user_id

      t.timestamps
    end
  end
end
