class HomeController < ApplicationController
  before_action :set_meeting, only: %i[ index mymonth myweek myday mycustom ]

  def index
  end

  def mymonth
    # code
  end
  def myweek
    # code
  end
  def myday
    # code
  end
  def mycustom
    # code
  end

  private

  def set_meeting
    @meetings = Meeting.all.order(start_date: :asc)
    @calendars = Calendar.all
    # Scope your query to the dates being shown:
    start_date = params.fetch(:start_date, Date.today).to_date
    @meetings = Meeting.where(start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end

  def meeting_params
    params.require(:meeting).permit(:name, :start_time, :end_time, :id)
  end

end
