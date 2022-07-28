# README

## users

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| encrypted_password | string | null: false               |
| email              | string | null: false, unique: true |

### Association
- has_many :gives
- has_many :gets


## gives(支出)

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| clothing_out(衣)   | string     | null: false                    |
| food_out(食)       | string     | null: false                    |
| live_out(住)       | string     | null: false                    |
| fixed_cost(固定費) | string     | null: false                    |
| user              | references | null: false, foreign_key: true |

### Association
- belongs_to :user


## gets(収入)

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| salary(給料) | string     | null: false                    |
| user        | references | null: false, foreign_key: true |

### Association
- belongs_to :user


## 実装予定の機能
現在、支出を計算する機能を実装中。
今後は収入を計算する機能、ビューを実装予定。