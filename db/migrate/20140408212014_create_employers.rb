class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :phone
      t.string :password_digest
      t.integer :worker_id

      t.timestamps
    end
  end
end
