class DepartmentTransfersController < ApplicationController
  before_action :set_department_transfer, only: %i[ show update destroy ]

  # GET /department_transfers
  def index
    @department_transfers = DepartmentTransfer.all

    render json: @department_transfers
  end

  # GET /department_transfers/1
  def show
    render json: @department_transfer
  end

  # POST /department_transfers
  def create
    @department_transfer = DepartmentTransfer.new(department_transfer_params)

    if @department_transfer.save
      render json: @department_transfer, status: :created, location: @department_transfer
    else
      render json: @department_transfer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /department_transfers/1
  def update
    if @department_transfer.update(department_transfer_params)
      render json: @department_transfer
    else
      render json: @department_transfer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /department_transfers/1
  def destroy
    @department_transfer.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_department_transfer
      @department_transfer = DepartmentTransfer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def department_transfer_params
      params.require(:department_transfer).permit(:employee_id, :department_id, :previous_department_id, :transferred_at)
    end
end
