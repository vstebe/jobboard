class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy]

  # GET /offers
  # GET /offers.json
  def index
    @offers = Offer.all
  end
  
  def filter
    @filter_company_id = params[:filter_company_id]
    @filter_target_id = params[:filter_target_id]
    conditions = {}
    if @filter_company_id.present?
        conditions[:company_id] = @filter_company_id
    end
    if @filter_target_id.present?
        conditions[:target_id] = @filter_target_id
    end
    @offers = Offer.where(conditions)
    respond_to do |format|
      format.html { render :index }
    end
  end

  # GET /offers/1
  # GET /offers/1.json
  def show
  end

  # GET /offers/new
  def new
    @offer = Offer.new
    @companies = Company.all
  end

  # GET /offers/1/edit
  def edit
    @companies = Company.all
  end

  # POST /offers
  # POST /offers.json
  def create
    offer_params[:user_id] = current_user.id
    @offer = Offer.new(offer_params)

    respond_to do |format|
      if @offer.save
        format.html { redirect_to @offer, notice: 'Offer was successfully created.' }
        format.json { render :show, status: :created, location: @offer }
      else
        format.html { render :new }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end
  


  # PATCH/PUT /offers/1
  # PATCH/PUT /offers/1.json
  def update
    respond_to do |format|
      if @offer.update(offer_params)
        format.html { redirect_to @offer, notice: 'Offer was successfully updated.' }
        format.json { render :show, status: :ok, location: @offer }
      else
        format.html { render :edit }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offers/1
  # DELETE /offers/1.json
  def destroy
    @offer.destroy
    respond_to do |format|
      format.html { redirect_to offers_url, notice: 'Offer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offer
      @offer = Offer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offer_params
      params.require(:offer).permit(:company_id, :title, :target_id, :description, :duration, :creation_date, :start_date, :expiration_date, :contact, :category_id, :active, :published)
    end
end
