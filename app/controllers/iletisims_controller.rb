class IletisimsController < ApplicationController
  before_action :set_iletisim, only: [:show, :edit, :update, :destroy]

  # GET /iletisims
  # GET /iletisims.json
  def index
    @iletisims = Iletisim.all
  end

  # GET /iletisims/1
  # GET /iletisims/1.json
  def show
  end

  # GET /iletisims/new
  def new
    @iletisim = Iletisim.new
  end

  # GET /iletisims/1/edit
  def edit
  end

  # POST /iletisims
  # POST /iletisims.json
  def create
    @iletisim = Iletisim.new(iletisim_params)

    respond_to do |format|
      if @iletisim.save
        format.html { redirect_to @iletisim, notice: 'Iletisim was successfully created.' }
        format.json { render :show, status: :created, location: @iletisim }
      else
        format.html { render :new }
        format.json { render json: @iletisim.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iletisims/1
  # PATCH/PUT /iletisims/1.json
  def update
    respond_to do |format|
      if @iletisim.update(iletisim_params)
        format.html { redirect_to @iletisim, notice: 'Iletisim was successfully updated.' }
        format.json { render :show, status: :ok, location: @iletisim }
      else
        format.html { render :edit }
        format.json { render json: @iletisim.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iletisims/1
  # DELETE /iletisims/1.json
  def destroy
    @iletisim.destroy
    respond_to do |format|
      format.html { redirect_to iletisims_url, notice: 'Iletisim was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iletisim
      @iletisim = Iletisim.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iletisim_params
      params.require(:iletisim).permit(:aciklama)
    end
end
