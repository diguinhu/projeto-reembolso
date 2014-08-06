class HomesController < ApplicationController
  before_action :set_home, only: [:show, :edit, :update, :destroy]

  # GET /homes
  # GET /homes.json
  def index
    @homes = Home.all
  end

  # GET /homes/1
  # GET /homes/1.json
  def show
  end

  # GET /homes/new
  def new
    
  end

  # GET /homes/1/edit
  def edit
  end

  # POST /homes
  # POST /homes.json
  def create
    
  end

  # PATCH/PUT /homes/1
  # PATCH/PUT /homes/1.json
  def update
    
  end

  # DELETE /homes/1
  # DELETE /homes/1.json
  def destroy
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home
     
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_params
     
    end
end
