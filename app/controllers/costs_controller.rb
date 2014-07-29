class CostsController < ApplicationController
  before_action :set_cost, only: [:show, :edit, :update, :destroy]

  # GET /costs
  # GET /costs.json
  def index
    @travel = Travel.find(params[:travel_id])
    if current_user.present?
      @costs = @travel.costs
      else
      redirect_to '/users/sign_in'
    end
  end

  # GET /costs/1
  # GET /costs/1.json
  def show
   
  end

  # GET /costs/new
  def new
    @travel = Travel.find(params[:travel_id])
    if current_user.present?
    @cost = @travel.costs.new
    else
      redirect_to '/users/sign_in'
    end
  end

  # GET /costs/1/edit
  def edit
  end

  # POST /costs
  # POST /costs.json
  def create
    @travel = Travel.find(params[:travel_id])
    @cost = @travel.costs.new(cost_params)

    respond_to do |format|
      if @cost.save
        format.html { redirect_to travel_cost_path(@travel,@cost), notice: 'Custo was successfully created.' }
        format.json { render :show, status: :created, location: @cost }
      else
        format.html { render :new }
        format.json { render json: @cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /costs/1
  # PATCH/PUT /costs/1.json
  def update
    respond_to do |format|
      if @cost.update(cost_params)
        format.html { redirect_to @cost, notice: 'Cost was successfully updated.' }
        format.json { render :show, status: :ok, location: @cost }
      else
        format.html { render :edit }
        format.json { render json: @cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /costs/1
  # DELETE /costs/1.json
  def destroy
    @cost.destroy
    respond_to do |format|
      format.html { redirect_to homes_path, notice: 'Cost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cost
      @cost = Cost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cost_params
      params.require(:cost).permit(:tipo, :valor, :data, :travel_id, :tipo_id, :cover)
    end

    
end
