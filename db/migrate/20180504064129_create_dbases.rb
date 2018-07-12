class CreateDbases < ActiveRecord::Migration
  def change
    create_table :dbases do |t|
      t.string :person
      t.text :question

      t.timestamps null: false
      
    end
  end
end
