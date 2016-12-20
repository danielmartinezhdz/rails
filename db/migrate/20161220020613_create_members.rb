class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :lastname
      t.integer :age
      t.string :email
      t.string :gender
      t.string :scholership

      t.timestamps
    end
  end
end
