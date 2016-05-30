class EatingDay < ActiveRecord::Base
  has_many :users, through: :user_dates
  has_many :user_dates

  accepts_nested_attributes_for :user_dates, allow_destroy: true
end
