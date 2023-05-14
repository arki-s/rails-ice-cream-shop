class ReviewsController < ApplicationController
  def new
    @menu = Menu.find(params[:menu_id])
    @review = Review.new
  end

  def create
    @review = Review.new(params_review)
    @menu = Menu.find(params[:menu_id])
    @review.menu = @menu
    if @review.save
      redirect_to menu_path(@menu)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to menu_path(@review.menu), status: :see_other
  end

  private

  def params_review
    params.require(:review).permit(:content, :menu_id)
  end
end
