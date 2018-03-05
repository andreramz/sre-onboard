class RubyMoment
  def initialize(year = -1, month = -1, date = -1)
    if year == -1 || month == -1 || date == -1
      timeNow = Time.new
    else
      timeNow = Time.new(year, month, date)
    end
    @year = timeNow.year
    @month = timeNow.month
    @day = timeNow.day
    @wday = timeNow.wday
  end

  def year
    @year
  end

  def month
    month_list = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
    month_list[@month - 1]
  end

  def day
    @day
  end

  def weekday
    day_list = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
    day_list[@wday]
  end

  def complete_date
    weekday + ', ' + month + ' ' + day.to_s + ', ' + year.to_s
  end
end
