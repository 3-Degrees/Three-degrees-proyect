class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.string :name
      t.integer :age
      t.string :location
      t.string :email
      t.string :phone
      t.text :reason
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
