class CreateThoughts < ActiveRecord::Migration
  def change
    create_table :thoughts do |t|

      t.string :idea
      t.string :author

      t.timestamps
    end
  end
end
