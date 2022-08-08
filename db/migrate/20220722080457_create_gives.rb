class CreateGives < ActiveRecord::Migration[6.0]
  def change
    create_table :gives do |t|
      t.string :clothing_out, null: false
      t.string :food_out,     null: false
      t.string :live_out,     null: false
      t.string :fixed_cost,   null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end



# | Column            | Type       | Options                        |
# | ----------------- | ---------- | ------------------------------ |
# | clothing_out(衣)   | string     | null: false                    |
# | food_out(食)       | string     | null: false                    |
# | live_out(住)       | string     | null: false                    |
# | fixed_cost(固定費) | string     | null: false                    |
# | user              | references | null: false, foreign_key: true |

# ### Association
# - belongs_to :user