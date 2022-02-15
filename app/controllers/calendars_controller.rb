class CalendarsController < ApplicationController
  before_action :set_calendar, only: %i[ show edit update destroy ]

  # GET /calendars
  def index
    @calendars = Calendar.all
    @meetings = Meeting.all
  end

  # GET /calendars/1
  def show
  end

  # GET /calendars/new
  def new
    @calendar = Calendar.new
  end

  # GET /calendars/1/edit
  def edit
  end

  # POST /calendars
  def create
    @calendar = Calendar.new(calendar_params)

    if @calendar.save
      redirect_to @calendar, notice: "Calendar was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /calendars/1
  def update
    if @calendar.update(calendar_params)
      redirect_to @calendar, notice: "Calendar was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /calendars/1
  def destroy
    @calendar.destroy
    redirect_to calendars_url, notice: "Calendar was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calendar
      @calendar = Calendar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def calendar_params
      params.require(:calendar).permit(:name, :background_color, :text_color)
    end
end
