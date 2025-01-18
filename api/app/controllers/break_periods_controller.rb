class BreakPeriodsController < ApplicationController
  before_action :set_break_period, only: %i[ show update destroy ]

  # GET /break_periods
  def index
    @break_periods = BreakPeriod.all

    render json: @break_periods
  end

  # GET /break_periods/1
  def show
    render json: @break_period
  end

  # POST /break_periods
  def create
    @break_period = BreakPeriod.new(break_period_params)

    if @break_period.save
      render json: @break_period, status: :created, location: @break_period
    else
      render json: @break_period.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /break_periods/1
  def update
    if @break_period.update(break_period_params)
      render json: @break_period
    else
      render json: @break_period.errors, status: :unprocessable_entity
    end
  end

  # DELETE /break_periods/1
  def destroy
    @break_period.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_break_period
      @break_period = BreakPeriod.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def break_period_params
      params.require(:break_period).permit(:work_period_id, :break_start_time, :break_end_time, :note)
    end
end
