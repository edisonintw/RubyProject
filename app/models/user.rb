class User < ActiveRecord::Base
  validates :username, presence: true
  validates :age, inclusion: { in: 1..150 }
  validates :account, presence: true
  validates :password, presence: true
end
