class DosesController < ApplicationController
def new
  @dose = Dose.new
  @cocktail = Cocktail.find(params[:cocktail_id])
end

def create
  # raise
  @cocktail = Cocktail.find(params[:cocktail_id])
  @dose = Dose.new(dose_params)
  @dose.cocktail = @cocktail
  if @dose.save
    redirect_to cocktail_path(@cocktail)
  else
    render "cocktails/show"
  end

  def destroy
    raise
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end
end

private

def dose_params
  params.require(:dose).permit(:description, :ingredient_id)
end
end
