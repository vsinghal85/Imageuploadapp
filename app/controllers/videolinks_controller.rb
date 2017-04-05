class VideolinksController < ApplicationController
  before_action :set_videolink, only: [:show, :edit, :update, :destroy]
  include ApplicationHelper
  # GET /videolinks
  # GET /videolinks.json
  def index
    @videolinks = Videolink.all
  end

  # GET /videolinks/1
  # GET /videolinks/1.json
  def show
  end

  # GET /videolinks/new
  def new
    @videolink = Videolink.new
  end

  # GET /videolinks/1/edit
  def edit
  end

  # POST /videolinks
  # POST /videolinks.json
  def create
    @videolink = Videolink.new(videolink_params)
    
    respond_to do |format|
      if @videolink.save
        format.html { redirect_to @videolink, notice: 'Videolink was successfully created.' }
        format.json { render :show, status: :created, location: @videolink }
      else
        format.html { render :new }
        format.json { render json: @videolink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videolinks/1
  # PATCH/PUT /videolinks/1.json
  def update
    respond_to do |format|
      if @videolink.update(videolink_params)
        format.html { redirect_to @videolink, notice: 'Videolink was successfully updated.' }
        format.json { render :show, status: :ok, location: @videolink }
      else
        format.html { render :edit }
        format.json { render json: @videolink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videolinks/1
  # DELETE /videolinks/1.json
  def destroy
    @videolink.destroy
    respond_to do |format|
      format.html { redirect_to videolinks_url, notice: 'Videolink was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_videolink
      @videolink = Videolink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def videolink_params
      params.require(:videolink).permit(:link, :User_id)
    end
end
