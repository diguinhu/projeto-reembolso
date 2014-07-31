class TravelsController < ApplicationController
  before_action :set_travel, only: [:show, :edit, :update, :destroy]

  # GET /travels
  # GET /travels.json
  def index
    if current_user.present?
    @travels = current_user.travels
    respond_to do |format|
      format.html
      format.csv { render text: @travels.to_csv }
      format.xls #{ send_data @travels.to_csv(col_sep: "\t") }
    end
    else
      redirect_to '/users/sign_in'
    end
    
  end

  # GET /travels/1
  # GET /travels/1.json
  def show
    @total= @travel.costs.pluck(:valor).sum
  end

  # GET /travels/new
  def new
    if current_user.present?
    @travel = Travel.new
    else
      redirect_to '/users/sign_in'
    end
  end

  # GET /travels/1/edit
  def edit
  end

  # POST /travels
  # POST /travels.json
  def create
    @travel = Travel.new(travel_params)
    @travel.user = current_user

    respond_to do |format|
      if @travel.save
        format.html { redirect_to @travel, notice: 'Travel was successfully created.' }
        format.json { render :show, status: :created, location: @travel }
      else
        format.html { render :new }
        format.json { render json: @travel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travels/1
  # PATCH/PUT /travels/1.json
  def update
    respond_to do |format|
      if @travel.update(travel_params)
        format.html { redirect_to @travel, notice: 'Travel was successfully updated.' }
        format.json { render :show, status: :ok, location: @travel }
      else
        format.html { render :edit }
        format.json { render json: @travel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travels/1
  # DELETE /travels/1.json
  def destroy
    @travel.destroy
    respond_to do |format|
      format.html { redirect_to travels_url, notice: 'Travel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def export
      if current_user.present?
        @travel = Travel.find(params[:travel_id])
        @cost = @travel.costs
        @total= @travel.costs.pluck(:valor).sum
        respond_to do |format|
        format.html
        format.csv
        format.xls #{send_data @viagem.despesas.to_csv(col_sep: "\t") }
        end
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel
      @travel = Travel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_params
      params.require(:travel).permit(:destino, :data)
    end
end
