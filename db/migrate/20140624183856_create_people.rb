class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :defining_feature
      t.boolean :friend

      t.timestamps
    end
  end
end
