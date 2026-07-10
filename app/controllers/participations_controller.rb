class ParticipationsController < ApplicationController
  def new
    @store = Store.find(params[:store_id])
    @participation = Participation.new
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end

  def create
    @store = Store.find(participation_params[:store_id])
    @participation = Participation.new(participation_params)

    if @participation.save
      ParticipationMailer.confirmation(@participation).deliver_later
      ParticipationMailer.admin_notification(@participation).deliver_later
      GoogleSheetSync.push(@participation)
      redirect_to participation_path(@participation.token)
    else
      render :new, status: :unprocessable_entity
    end
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end

  def show
    @participation = Participation.find_by!(token: params[:token])
    @store = @participation.store
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end

  private

  def participation_params
    params.require(:participation).permit(:first_name, :last_name, :instagram_handle, :email, :store_id)
  end
end
