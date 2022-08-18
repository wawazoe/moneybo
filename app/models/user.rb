class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :gives
  #has_many :gets
  validates :nickname, presence: :true
end




# | Column             | Type   | Options                   |
# | ------------------ | ------ | ------------------------- |
# | nickname           | string | null: false               |
# | encrypted_password | string | null: false               |
# | email              | string | null: false, unique: true |

# ### Association
# - has_many :gives
# - has_many :gets