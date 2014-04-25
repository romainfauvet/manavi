class Admin::CategoriesController < AdminController
  def index
    ## @categories = Category.order(:title).page params[:page]

    @q = Category.search(params[:q])
    @categories = @q.result(distinct: true)

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
    params[:category].permit(:name)
  end
end
