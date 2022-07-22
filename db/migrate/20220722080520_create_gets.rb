class CreateGets < ActiveRecord::Migration[6.0]
  def change
    create_table :gets do |t|

      t.timestamps
    end
  end
end
