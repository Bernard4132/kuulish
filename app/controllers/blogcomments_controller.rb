class BlogcommentsController < ApplicationController
  before_action :set_blogcomment, only: [:show, :edit, :update, :destroy]

  # GET /blogcomments
  # GET /blogcomments.json
  def index
    @blogcomments = Blogcomment.all
  end

  # GET /blogcomments/1
  # GET /blogcomments/1.json
  def show
  end

  # GET /blogcomments/new
  def new
    @blogcomment = Blogcomment.new
  end

  # GET /blogcomments/1/edit
  def edit
  end

  # POST /blogcomments
  # POST /blogcomments.json
  def create
    @blogcomment = Blogcomment.new(blogcomment_params)

    respond_to do |format|
      if @blogcomment.save
        format.html { redirect_to @blogcomment, notice: 'Blogcomment was successfully created.' }
        format.json { render :show, status: :created, location: @blogcomment }
      else
        format.html { render :new }
        format.json { render json: @blogcomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogcomments/1
  # PATCH/PUT /blogcomments/1.json
  def update
    respond_to do |format|
      if @blogcomment.update(blogcomment_params)
        format.html { redirect_to @blogcomment, notice: 'Blogcomment was successfully updated.' }
        format.json { render :show, status: :ok, location: @blogcomment }
      else
        format.html { render :edit }
        format.json { render json: @blogcomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogcomments/1
  # DELETE /blogcomments/1.json
  def destroy
    @blogcomment.destroy
    respond_to do |format|
      format.html { redirect_to blogcomments_url, notice: 'Blogcomment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blogcomment
      @blogcomment = Blogcomment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blogcomment_params
      params.require(:blogcomment).permit(:body, :bolg_id)
    end
end
