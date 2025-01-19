class WorkPeriodsController < ApplicationController
  before_action :set_work_period, only: %i[ show update destroy ]

  # GET /work_periods
  def index
    @work_periods = WorkPeriod.all

    render json: @work_periods
  end

  # GET /work_periods/1
  def show
    render json: @work_period
  end

  # POST /work_periods
  def create
    @work_period = WorkPeriod.new(work_period_params)

    if @work_period.save
      render json: @work_period, status: :created, location: @work_period
    else
      render json: @work_period.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /work_periods/1
  def update
    if @work_period.update(work_period_params)
      render json: @work_period
    else
      render json: @work_period.errors, status: :unprocessable_entity
    end
  end

  # DELETE /work_periods/1
  def destroy
    @work_period.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_period
      @work_period = WorkPeriod.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def work_period_params
      params.require(:work_period).permit(:employee_id, :assigned_date, :start_time, :end_time, :note)
    end
end
