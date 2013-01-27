class CreateChumokus < ActiveRecord::Migration
  def change
    create_table :chumokus do |t|

      t.timestamps
    end
  end
end
