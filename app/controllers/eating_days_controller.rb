class EatingDaysController < ApplicationController
  load_and_authorize_resource :eating_day

  def create
  	if @eating_day.save
      if params[:eating_day][:user_dates_attributes].present?
        @eated_count = @eating_day.user_dates.where(eated: true).count
        @fee = @eating_day.money / @eated_count

        @eating_day.user_dates.each do |user_date|
          if user_date.eated?
            user_date.update_attributes fee: @fee
          end
        end
      end

  	  flash[:success] = t "flash.create_eating_day_success"
  	  redirect_to root_url
  	else
  	  flash[:danger]  = t "flash.create_eating_day_failed"
  	  render :new
  	end
  end

  def edit
  end

  def update
    if @eating_day.update_attributes eating_day_params
      if params[:eating_day][:user_dates_attributes].present?
        @eated_count = @eating_day.user_dates.where(eated: true).count
        @fee = @eating_day.money / @eated_count

        @eating_day.user_dates.each do |user_date|
          if user_date.eated?
            user_date.update_attributes fee: @fee
          else
            user_date.update_attributes fee: 0
          end
        end
      end 

      flash[:success] = t "flash.update_eating_day_success"
      redirect_to root_url
    else
      flash[:danger]  = t "flash.update_eating_day_failed"
      render :edit
    end
  end

  def show
  end

  private
  def eating_day_params
    params.require(:eating_day).permit :id, :date, :money, :meal,
      user_dates_attributes: [:id, :user_id, :date_id, :eated, :fee, :_destroy]
  end
end
