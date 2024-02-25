class CreateArtWorks < ActiveRecord::Migration[7.1]
  def change
    create_table :art_works do |t|
      t.string :title

      t.timestamps
    end
  end
end
