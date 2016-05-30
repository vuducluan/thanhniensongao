class UserDate < ActiveRecord::Base
  belongs_to :user 
  belongs_to :eating_day
end
