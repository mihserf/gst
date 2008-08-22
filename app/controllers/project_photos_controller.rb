class ProjectPhotosController < ApplicationController
  def destroy
    @photo=ProjectPhoto.find(params[:id])
    @photo.destroy

    respond_to  do |format|
      format.js { render :xml => "destroied" }
    end
  end
end
