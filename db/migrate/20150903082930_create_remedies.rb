class CreateRemedies < ActiveRecord::Migration
  def change
    create_table :remedies do |t|
      t.text :description
      t.string :twitter_handle

      t.timestamps null: false
    end
  end
end
