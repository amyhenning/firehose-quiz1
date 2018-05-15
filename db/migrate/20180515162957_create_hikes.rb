class CreateHikes < ActiveRecord::Migration[5.0]
  def change
    create_table :hikes do |t|
    	t.string :name
    	t.string :date
    	t.text :description
      t.timestamps
    end
  end
end
