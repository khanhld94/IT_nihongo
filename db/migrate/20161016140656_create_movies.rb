class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.references    :user, index: true
      t.references    :rate, index: true
      t.string        :name
      t.string        :content
      t.string        :image

      t.timestamps null: false
    end
  end
end
