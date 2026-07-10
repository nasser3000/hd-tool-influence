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
      begin
        ParticipationMailer.confirmation(@participation).deliver_now
        Rails.logger.info "[Mailer] Confirmation envoyée à #{@participation.email}"
      rescue => e
        Rails.logger.error "[Mailer] Confirmation FAILED: #{e.class}: #{e.message}"
      end

      begin
        ParticipationMailer.admin_notification(@participation).deliver_now
        Rails.logger.info "[Mailer] Notification admin envoyée"
      rescue => e
        Rails.logger.error "[Mailer] Admin FAILED: #{e.class}: #{e.message}"
      end
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
