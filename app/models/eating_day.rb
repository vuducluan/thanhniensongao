class EatingDay < ActiveRecord::Base
  has_many :users, through: :user_date
  has_many :user_date
end
