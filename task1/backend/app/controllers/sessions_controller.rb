class SessionsController<ApplicationController
  def new
  end
  def create
    company = Company.find_by(name: params[:session][:name])
    if company && company.authenticate(params[:session][:password])
      session[:company_id] = company.id
      flash[:success] = "Logged in"
      redirect_to company_path(company)
    else
      flash.now[:danger] = "Something went wrong"
      render 'new'
    end
  end

  def destroy
    session[:company_id] = nil
    flash[:success] = "Logged out"
    redirect_to root_path
  end
end
