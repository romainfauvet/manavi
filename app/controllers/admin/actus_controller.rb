class Admin::ActusController < AdminController
  def index
    @q = Actu.search(params[:q])
    @actus = @q.result(distinct: true)
    @new_actu = Actu.new
  end

  def create
    @actu = Actu.new(actu_params)
    if @actu.save
      flash[:notice] = "Nouvelle actualité ajoutée"
    else
      flash[:error] = "L'actualité' n'a pas pu être ajouté"
    end
    redirect_to admin_actus_path
  end

  def edit
    Actu.update()
  end

  def destroy
    @actu = Actu.where(id: params[:id]).first
    @actu.destroy
    redirect_to admin_actus_path
  end

  private

  def actu_params
    params.require(:actu).permit(:name, :description)
  end
end
