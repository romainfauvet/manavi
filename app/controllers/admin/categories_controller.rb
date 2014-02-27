class Admin::CategoriesController < AdminController
  def index
    ## @categories = Categorie.order(:title).page params[:page]

    @q = Categorie.search(params[:q])
    @categories = @q.result(distinct: true)

    @new_categorie = Categorie.new
  end

  def create
    authorize! :create, Categorie

    @categorie = Categorie.new(categorie_params)
    if @categorie.save
      flash[:notice] = "Nouvelle catégorie ajoutée"
    else
      flash[:error] = "La catégorie n'a pas pu être ajouté"
    end
    redirect_to admin_categories_path
  end

  private

  def article_params
    params[:categorie].permit(:name)
  end
end
