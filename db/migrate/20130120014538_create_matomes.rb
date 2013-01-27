class CreateMatomes < ActiveRecord::Migration
  def change
    create_table :matomes do |t|

      t.timestamps
    end
  end
end
