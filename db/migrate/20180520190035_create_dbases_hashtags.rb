class CreateDbasesHashtags < ActiveRecord::Migration
  def change
    create_table :dbases_hashtags do |t|
      t.integer :dbase_id
      t.integer :hashtag_id 
    end
  end
end
