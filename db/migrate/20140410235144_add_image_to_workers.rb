class AddImageToWorkers < ActiveRecord::Migration
  def change
    add_column :workers, :image, :string
  end
end
