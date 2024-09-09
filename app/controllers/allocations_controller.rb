class AllocationsController < ApplicationController
  before_action :set_allocation, only: %i[ show edit update destroy ]

  # GET /allocations or /allocations.json
  def index
    @allocations = Allocation.all
  end

  # GET /allocations/1 or /allocations/1.json
  def show
  end

  # GET /allocations/new
  def new
    @allocation = Allocation.new
  end

  # GET /allocations/1/edit
  def edit
  end

  # POST /allocations or /allocations.json
  def create
    @allocation = Allocation.new(allocation_params)

    respond_to do |format|
      if @allocation.save
        format.html { redirect_to allocation_url(@allocation), notice: "Allocation was successfully created." }
        format.json { render :show, status: :created, location: @allocation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /allocations/1 or /allocations/1.json
  def update
    respond_to do |format|
      if @allocation.update(allocation_params)
        format.html { redirect_to allocation_url(@allocation), notice: "Allocation was successfully updated." }
        format.json { render :show, status: :ok, location: @allocation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allocations/1 or /allocations/1.json
  def destroy
    @allocation.destroy

    respond_to do |format|
      format.html { redirect_to allocations_url, notice: "Allocation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_allocation
      @allocation = Allocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def allocation_params
      params.require(:allocation).permit(:shift_id, :staff_id)
    end
end
