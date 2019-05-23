class YazilarsController < ApplicationController
  before_action :set_yazilar, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! 
  # GET /yazilars
  # GET /yazilars.json
  def index
    if current_user
      @yazilars = Yazilar.all
      end
    
  end

  # GET /yazilars/1
  # GET /yazilars/1.json
  def show
  end

  # GET /yazilars/new
  def new
    @yazilar = Yazilar.new
  end

  # GET /yazilars/1/edit
  def edit
  end

  # POST /yazilars
  # POST /yazilars.json
  def create
    @yazilar = Yazilar.new(yazilar_params)

    respond_to do |format|
      if @yazilar.save
        format.html { redirect_to @yazilar, notice: 'Yazilar was successfully created.' }
        format.json { render :show, status: :created, location: @yazilar }
      else
        format.html { render :new }
        format.json { render json: @yazilar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yazilars/1
  # PATCH/PUT /yazilars/1.json
  def update
    respond_to do |format|
      if @yazilar.update(yazilar_params)
        format.html { redirect_to @yazilar, notice: 'Yazilar was successfully updated.' }
        format.json { render :show, status: :ok, location: @yazilar }
      else
        format.html { render :edit }
        format.json { render json: @yazilar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yazilars/1
  # DELETE /yazilars/1.json
  def destroy
    @yazilar.destroy
    respond_to do |format|
      format.html { redirect_to yazilars_url, notice: 'Yazilar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yazilar
      @yazilar = Yazilar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yazilar_params
      params.require(:yazilar).permit(:kategori, :baslik, :yazar, :aciklama, :tarih, :resim)
    end
end
