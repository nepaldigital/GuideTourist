class CreateMasters < ActiveRecord::Migration
  def change
    create_table :masters do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
