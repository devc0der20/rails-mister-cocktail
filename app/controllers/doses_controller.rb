class DosesController < ApplicationController
def new
  @dose = Dose.new
  @cocktail = Cocktail.find(params[:cocktail_id])
end

def create
  raise
  @dose = Dose.new(dose_params)
end

private

def dose_params
  params.require(:dose).permit(:description)
end
end
