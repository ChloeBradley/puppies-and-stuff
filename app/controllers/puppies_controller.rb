class PuppiesController < ApplicationController
  def new
    @owner = Owner.find(params[:owner_id])
    @puppy = Puppy.new
  end

  def create
    @owner = Owner.find(params[:owner_id])
    @puppy = Puppy.new(puppy_params.merge(owner_id: @owner.id))
    if @puppy.save
      flash[:notice] = "You just got a puppy"
      redirect_to owner_puppy_path(@owner, @puppy)
    else
      render :new
    end
  end

  def show
    @appointment = Appointment.new
    @puppy = Puppy.find(params[:id])
    @toy = Toy.new
  end

  private

  def puppy_params
    params.require(:puppy).permit(:name)
  end
end
