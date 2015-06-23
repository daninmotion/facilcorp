class CompanynamesController < ApplicationController
  before_action :set_companyname, only: [:show, :edit, :update, :destroy]
  before_action :store_company_data, only: [:create]
  before_action :authenticate_user!, only: [:create]


  # GET /companynames
  # GET /companynames.json
  def index
    @companynames = Companyname.all
  end

  # GET /companynames/1
  # GET /companynames/1.json
  def show
  end

  # GET /companynames/new
  def new
    @companyname = Companyname.new
  end

  # GET /companynames/1/edit
  def edit
  end

  # POST /companynames
  # POST /companynames.json
  def create
    @companyname = current_user.companynames.build(companyname_params)

    respond_to do |format|
      if @companyname.save
        format.html { redirect_to @companyname, notice: 'Companyname was successfully created.' }
        format.json { render action: 'show', status: :created, location: @companyname }
      else
        format.html { render action: 'new' }
        format.json { render json: @companyname.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companynames/1
  # PATCH/PUT /companynames/1.json
  def update
    respond_to do |format|
      if @companyname.update(companyname_params)
        format.html { redirect_to @companyname, notice: 'Companyname was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @companyname.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companynames/1
  # DELETE /companynames/1.json
  def destroy
    @companyname.destroy
    respond_to do |format|
      format.html { redirect_to companynames_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_companyname
      @companyname = Companyname.find(params[:id])
    end

    def store_company_data
      unless user_signed_in?
        session[:company] = params[:companynames]
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def companyname_params
      params.require(:companyname).permit(:title, :name, :address, :phone)
    end
end
