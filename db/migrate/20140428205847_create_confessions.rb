class CreateConfessions < ActiveRecord::Migration
  def change
    create_table :confessions do |t|

      t.string :title
      t.text :description

      t.string :author
      t.string :gender

      t.string :location

      t.timestamps
    end
  end
end
