class HandersController < ApplicationController
  before_action :set_hander, only: [:show, :edit, :update, :destroy]

  # GET /handers
  # GET /handers.json
  def index
    @handers = Hander.all
  end

  # GET /handers/1
  # GET /handers/1.json
  def show
  end

  # GET /handers/new
  def new
    @hander = Hander.new
  end

  # GET /handers/1/edit
  def edit
  end

  # POST /handers
  # POST /handers.json
  def create
    @hander = Hander.new(hander_params)

    respond_to do |format|
      handeruserid = @hander.users.first.id
      handername = @hander.name
      @user = User.find(handeruserid)
      @roleforuser = Role.find_by_name(handername)
      @user.add_role handername
      if @hander.save
        format.html { redirect_to "/admindashboard", notice: 'Role Successfully Asigned' }
        format.json { render :show, status: :created, location: @hander }
      else
        format.html { render :new }
        format.json { render json: @hander.errors, status: :unprocessable_entity }
      end
    end
    authorize! :create, @hander
  end

  # PATCH/PUT /handers/1
  # PATCH/PUT /handers/1.json
  def update
    respond_to do |format|
      if @hander.update(hander_params)
        format.html { redirect_to @hander, notice: 'Hander was successfully updated.' }
        format.json { render :show, status: :ok, location: @hander }
      else
        format.html { render :edit }
        format.json { render json: @hander.errors, status: :unprocessable_entity }
      end
    end
    authorize! :update, @hander
  end

  # DELETE /handers/1
  # DELETE /handers/1.json
  def destroy
    @hander.destroy
    respond_to do |format|
      format.html { redirect_to handers_url, notice: 'Hander was successfully destroyed.' }
      format.json { head :no_content }
    end
    authorize! :destroy, @hander
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hander
      @hander = Hander.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hander_params
      params.require(:hander).permit(:name, :user_ids)
    end
end
