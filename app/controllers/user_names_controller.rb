class UserNamesController < ApplicationController
  before_action :set_user_name, only: [:show, :edit, :update, :destroy]

  # GET /user_names
  # GET /user_names.json
  def index
    @user_names = UserName.all
  end

  # GET /user_names/1
  # GET /user_names/1.json
  def show
  end

  # GET /user_names/new
  def new
    @user_name = UserName.new
  end

  # GET /user_names/1/edit
  def edit
  end

  # POST /user_names
  # POST /user_names.json
  def create
    @user_name = UserName.new(user_name_params)

    respond_to do |format|
      if @user_name.save
        format.html { redirect_to @user_name, notice: 'User name was successfully created.' }
        format.json { render :show, status: :created, location: @user_name }
      else
        format.html { render :new }
        format.json { render json: @user_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_names/1
  # PATCH/PUT /user_names/1.json
  def update
    respond_to do |format|
      if @user_name.update(user_name_params)
        format.html { redirect_to @user_name, notice: 'User name was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_name }
      else
        format.html { render :edit }
        format.json { render json: @user_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_names/1
  # DELETE /user_names/1.json
  def destroy
    @user_name.destroy
    respond_to do |format|
      format.html { redirect_to user_names_url, notice: 'User name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_name
      @user_name = UserName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_name_params
      params.require(:user_name).permit(:username, :patientID)
    end
end
