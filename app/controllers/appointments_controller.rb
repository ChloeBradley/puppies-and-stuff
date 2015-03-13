class AppointmentsController < ApplicationController
  def create
    @appointment = Appointment.new(appointment_params.merge(puppy_id: params[:puppy_id]))

    if @appointment.save
      flash[:notice] = "Poor puppy"
      redirect_to puppy_path(params[:puppy_id])
    else
      render "puppies/show"
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:time, :vet_id)
  end
end
