class Give < ApplicationRecord
   belongs_to :user
  #  validates :clothing_out, presence: true
  #  validates :food_out,     presence: true
  #  validates :live_out,     presence: true
  #  validates :fixed_cost,   presence: true

   #validates :nickname, presence: :true
end



# ## gives(支出)

# | Column            | Type       | Options                        |
# | ----------------- | ---------- | ------------------------------ |
# | clothing_out(衣)   | string     | null: false                    |
# | food_out(食)       | string     | null: false                    |
# | live_out(住)       | string     | null: false                    |
# | fixed_cost(固定費) | string     | null: false                    |
# | user              | references | null: false, foreign_key: true |

# ### Association
# - belongs_to :user