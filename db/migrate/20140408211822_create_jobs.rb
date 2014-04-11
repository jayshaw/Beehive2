class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :description
      t.string :duration
      t.integer :payment
      t.integer :employer_id
      t.integer :worker_id

      t.timestamps
    end
  end
end
