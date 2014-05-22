class Admin::CategoriesController < AdminController
  def index
    @categories = Category.where(parent_id: nil).order(:name)

    @new_category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "Nouvelle catégorie ajoutée"
    else
      flash[:error] = "La catégorie n'a pas pu être ajouté"
    end
    redirect_to admin_categories_path
  end

  def edit
    Category.update()
  end

  def destroy
    @category = Category.where(id: params[:id]).first
    @category.destroy
    redirect_to admin_categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name, :parent_id)
  end
end
