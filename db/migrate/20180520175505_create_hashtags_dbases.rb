class CreateHashtagsDbases < ActiveRecord::Migration
  def change
    create_table :hashtags_dbases do |t|
      t.integer :dbase_id
      t.integer :hashtag_id
    end
  end
end
