class UserDatesController < ApplicationController
  load_and_authorize_resource :user_date

  def new
  end
end
