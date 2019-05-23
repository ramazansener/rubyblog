class HakkindasController < ApplicationController
  before_action :set_hakkinda, only: [:show, :edit, :update, :destroy]

  # GET /hakkindas
  # GET /hakkindas.json
  def index
    @hakkindas = Hakkinda.all
  end

  # GET /hakkindas/1
  # GET /hakkindas/1.json
  def show
  end

  # GET /hakkindas/new
  def new
    @hakkinda = Hakkinda.new
  end

  # GET /hakkindas/1/edit
  def edit
  end

  # POST /hakkindas
  # POST /hakkindas.json
  def create
    @hakkinda = Hakkinda.new(hakkinda_params)

    respond_to do |format|
      if @hakkinda.save
        format.html { redirect_to @hakkinda, notice: 'Hakkinda was successfully created.' }
        format.json { render :show, status: :created, location: @hakkinda }
      else
        format.html { render :new }
        format.json { render json: @hakkinda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hakkindas/1
  # PATCH/PUT /hakkindas/1.json
  def update
    respond_to do |format|
      if @hakkinda.update(hakkinda_params)
        format.html { redirect_to @hakkinda, notice: 'Hakkinda was successfully updated.' }
        format.json { render :show, status: :ok, location: @hakkinda }
      else
        format.html { render :edit }
        format.json { render json: @hakkinda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hakkindas/1
  # DELETE /hakkindas/1.json
  def destroy
    @hakkinda.destroy
    respond_to do |format|
      format.html { redirect_to hakkindas_url, notice: 'Hakkinda was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hakkinda
      @hakkinda = Hakkinda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hakkinda_params
      params.require(:hakkinda).permit(:aciklama, :tarih,:resim)
    end
end
