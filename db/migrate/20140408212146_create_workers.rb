class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :phone
      t.string :password_digest
      t.integer :employer_id

      t.timestamps
    end
  end
end
