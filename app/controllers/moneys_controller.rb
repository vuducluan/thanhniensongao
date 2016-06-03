class MoneysController < ApplicationController
   load_and_authorize_resource

  def index
  	@moneys = Money.all
  end

  def new
  end

  def create
  	if @money.save
  	  flash[:success] = t "flash.create_money_success"
  	  redirect_to root_url
  	else
  		flash[:danger] = t "flash.create_money_failed"
  		render :new
  	end
  end

  def edit
  end

  private
  def money_params
    params.require(:money).permit :user_id, :money_type, :fee, :note
  end
end
