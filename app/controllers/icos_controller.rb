class IcosController < ApplicationController
  before_action :set_ico, only: [:show, :edit, :update, :destroy]

  # GET /icos
  # GET /icos.json
  def index
    @icos = Ico.all
  end

  # GET /icos/1
  # GET /icos/1.json
  def show
  end

  # GET /icos/new
  def new
    @ico = Ico.new
    authorize @ico
  end

  # GET /icos/1/edit
  def edit
    authorize @ico
  end

  # POST /icos
  # POST /icos.json
  def create
    @ico = Ico.new(ico_params)
    authorize @ico
    respond_to do |format|
      if @ico.save
        format.html { redirect_to @ico, notice: 'Ico was successfully created.' }
        format.json { render :show, status: :created, location: @ico }
      else
        format.html { render :new }
        format.json { render json: @ico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /icos/1
  # PATCH/PUT /icos/1.json
  def update
    authorize @ico
    respond_to do |format|
      if @ico.update(ico_params)
        format.html { redirect_to @ico, notice: 'Ico was successfully updated.' }
        format.json { render :show, status: :ok, location: @ico }
      else
        format.html { render :edit }
        format.json { render json: @ico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /icos/1
  # DELETE /icos/1.json
  def destroy
    @ico.destroy
    authorize @ico
    respond_to do |format|
      format.html { redirect_to icos_url, notice: 'Ico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ico
      @ico = Ico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ico_params
      params.require(:ico).permit(:name, :logo_img, :logo_img_alt, :overview, :meta_description, :header_img, :header_img_alt, :website, :report_date, :team, :advisors, :codebase, :community, :vision, :market, :traction, :marketing, :whitepaper, :roadmap, :ico_currency, :ico_currency_price, :symbol, :total_supply, :token_price_low, :token_price_high, :ICO_valuation_low, :ICO_valuation_high, :ICO_start_date, :ICO_end_date, :soft_cap, :hard_cap, :country, :youtube, :twitter, :telegram, :reddit, :facebook, :youtube, :github, :description, :active, :investors, :title)
    end
end
