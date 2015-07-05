class SessionsController < Devise::SessionsController

def new
  @companyname = Companyname.find(params[:id])
  @companyname.save
  super
end

def create
    super
    @companyname = Companyname.find(params[:id])
    @companyname.user = current_user
    @companyname.save
end
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def companyname_params
      params.require(:companyname).permit(:title, :name, :address, :phone)
    end

end

 
