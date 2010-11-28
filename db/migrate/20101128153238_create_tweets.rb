class CreateTweets < ActiveRecord::Migration
  def self.up
    create_table :tweets, :id => false do |t|
      t.decimal :tweet_id, :scale => 0, :null => false, :precision => 20, :primary_key => true
      t.string :body
      t.integer :user_id
      t.string :user_screen_name
      t.string :profile_image_url
      t.integer :randomize, :default => 0

      t.timestamps
    end
    add_index :tweets, :randomize
  end

  def self.down
    remove_index :tweets, :randomize
    drop_table :tweets
  end
end
