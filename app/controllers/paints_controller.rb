class PaintsController < ApplicationController
  before_action :set_paint, only: [:show, :edit, :update, :destroy]

  # GET /paints
  # GET /paints.json
  def index
    @paints = Paint.all
  end

  # GET /paints/1
  # GET /paints/1.json
  def show
  end

  # GET /paints/new
  def new
    @paint = Paint.new
  end

  # GET /paints/1/edit
  def edit
  end

  # POST /paints
  # POST /paints.json
  def create
    @paint = Paint.new(paint_params)

    respond_to do |format|
      if @paint.save
        format.html { redirect_to "/admindashboard", notice: 'Successfully created.' }
        format.json { render :show, status: :created, location: @paint }
      else
        format.html { render :new }
        format.json { render json: @paint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paints/1
  # PATCH/PUT /paints/1.json
  def update
    respond_to do |format|
      if @paint.update(paint_params)
        format.html { redirect_to "/admindashboard", notice: 'Edit was successfully made.' }
        format.json { render :show, status: :ok, location: @paint }
      else
        format.html { render :edit }
        format.json { render json: @paint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paints/1
  # DELETE /paints/1.json
  def destroy
    @paint.destroy
    respond_to do |format|
      format.html { redirect_to paints_url, notice: 'Paint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paint
      @paint = Paint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paint_params
      params.require(:paint).permit(:hometitle, :homedescription, :sutitle, :sudescription, :sitext, :sidescription, :homeimage, :siimage, :suimage)
    end
end
