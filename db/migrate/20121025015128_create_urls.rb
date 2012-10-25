class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|

      t.timestamps

      t.string :source
      t.string :mini_link
    end
  end
end
