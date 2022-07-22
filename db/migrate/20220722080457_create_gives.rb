class CreateGives < ActiveRecord::Migration[6.0]
  def change
    create_table :gives do |t|

      t.timestamps
    end
  end
end
