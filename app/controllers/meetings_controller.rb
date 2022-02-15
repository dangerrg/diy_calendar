class MeetingsController < ApplicationController
  before_action :set_meeting, only: %i[ show edit update destroy ]
  before_action :check_for_range_date!, only: %i[ create update ]

  # GET /meetings
  def index
    @meetings = Meeting.all.order(start_time: :asc)
    @calendars = Calendar.all
    # Scope your query to the dates being shown:
    start_date = params.fetch(:start_date, Date.today).to_date
    @meetings = Meeting.where(start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end

  # GET /meetings/1
  def show
  end

  # GET /meetings/new
  def new
    @meeting = Meeting.new
  end

  # GET /meetings/1/edit
  def edit
  end

  # POST /meetings
  def create
    @meeting = Meeting.new(meeting_params)

    if @meeting.save
      redirect_to @meeting, notice: "Meeting was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /meetings/1
  def update
    if @meeting.update(meeting_params)
      redirect_to home_index_path, notice: "Meeting was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /meetings/1
  def destroy
    @meeting.destroy
    redirect_to meetings_url, notice: "Meeting was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meeting
      @meeting = Meeting.find(params[:id])
    end

    # In case user selects a range date, Flatpickr will send a String like
    # "07/01/2022 00:00 to 11/01/2022 00:00".
    # This method split both date on "to", parses each date, and assigns both
    # date to the corresponding parameter.
    # In case a single date is picked, `:end_date` will stay equals to `nil`
    def check_for_range_date!
      params[:meeting][:start_time], params[:meeting][:end_time] =
        meeting_params[:start_time].split(/\s\w+\s/).map do |date|
          DateTime.parse(date)
        end
    end

    # Only allow a list of trusted parameters through.
    def meeting_params
      params.require(:meeting).permit(:name, :start_time, :end_time, :calendar, :calendar_id, :location, :description)
    end
end
