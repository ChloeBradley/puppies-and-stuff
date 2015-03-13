class ToysController < ApplicationController
  def create
    @puppy = Puppy.find(params[:puppy_id])
    @toy = @puppy.toys.new(toy_params)
    if @toy.save
      flash[:notice] = "Yay toys!"
      redirect_to puppy_path(@puppy)
    else
      render "puppies/show"
    end
  end

  private

  def toy_params
    params.require(:toy).permit(:name)
  end
end
