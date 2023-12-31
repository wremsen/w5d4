class RemoveAndAddShortenedUrl < ActiveRecord::Migration[7.1]
  def change
    drop_table :shortened_url

    create_table :shortened_urls do |t|
      t.string :long_url, null: false
      t.string :short_url, null: false
      t.integer :user_id, null: false


      t.timestamps
    end
    add_index :shortened_urls, :user_id, unique: true
    add_index :shortened_urls, :short_url, unique: true
      
    
  end
end
