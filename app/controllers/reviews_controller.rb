class ReviewsController < ApplicationController

  def create
    @review = Review.new(params_review)
    @menu = Menu.find(params[:menu_id])
    @review.menu = @menu
    respond_to do |format|
      if @review.save
        format.html { redirect_to menu_path(@menu) }
        format.json
      else
        format.html { render "menus/show", status: :unprocessable_entity }
        format.json
      end
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to menu_path(@review.menu), status: :see_other
  end

  private

  def params_review
    params.require(:review).permit(:content)
  end
end
