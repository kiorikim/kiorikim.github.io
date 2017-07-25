class CompaniesController<ApplicationController
  def index
    @companies = Company.all
  end
  def new
      @company = Company.new
    end
    def show
      @company = Company.find(params[:id])
      @company_articles = @company.tasks.order("updated_at DESC")
    end

    def create
      @company = Company.new(company_params)
      if @company.save
        session[:company_id] = @company.id
        flash[:notice] = "Success"
        redirect_to company_path(@company)
      else
        render "new"
      end
    end

    def edit
      @company = Company.find(params[:id])
    end

    def update
      @company = Company.find(params[:id])
      if @company.update(company_params)
        flash[:success] = "Your page was updated"
        redirect_to company_path(@company)
      else
        render "edit"
      end
    end

    def destroy
      @company = Company.find(params[:id])
      @company.destroy
      flash[:succes] = "Company deleted"
        # redirect_to users_path
    end

    private
    def company_params
      params.require(:company).permit(:name, :password)
    end

    # def require_same_user
    #   if current_user != @user
    #     flash[:danger] = "Only admin can perform this action"
    #     redirect_to users_path
    #   end
    # end
end





def new
    @company = Company.new
  end
  def show
    @company = Company.find(params[:id])
    @company_articles = @company.tasks.order("updated_at DESC")
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      # session[:company_id] = @company.id
      flash[:notice] = "Success"
      redirect_to company_path(@company)
    else
      render "new"
    end
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    if @company.update(company_params)
      flash[:success] = "Your page was updated"
      redirect_to company_path(@company)
    else
      render "edit"
    end
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    flash[:succes] = "Company deleted"
      # redirect_to users_path
  end

  private
  def company_params
    params.require(:user).permit(:username, :email, :password)
  end

  # def require_same_user
  #   if current_user != @user
  #     flash[:danger] = "Only admin can perform this action"
  #     redirect_to users_path
  #   end
  # end
