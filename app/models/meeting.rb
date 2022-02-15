class Meeting < ApplicationRecord

  belongs_to :calendar
  #
  # # has_rich_text :description
  #
  def truncated_description(word_count: 5)
    description.split(/\s+/, word_count + 1)[0...word_count].append('...').join(' ')
  end

  def date_time
    if end_time.nil?
      "Le #{format_date(start_time)}"
    else
      "Du #{format_date(start_time)} au #{format_date(end_time)}"
    end
  end

  # Set :end_time from Flatpickr String date if a range date is passed
  def check_for_range_date!
    binding.pry
  end

  private

    def format_date(date)
      date.strftime('%d/%m/%Y %H:%M')
    end
end
