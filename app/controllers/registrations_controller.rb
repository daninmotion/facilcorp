class RegistrationsController < Devise::RegistrationsController
  def new
  	@companyname = Companyname.find(params[:id])
    super
  end

  def create
    super
    @companyname = Companyname.find(params[:id].flatten.first)
    @companyname.user = current_user
    @companyname.save
  end

  def update
    super
  end
  
 end



