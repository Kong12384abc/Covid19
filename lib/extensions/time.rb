class Time
  def date_formatted
    self.strftime("%d/%m/%Y") rescue ""
  end

  def datetime_formatted
    self.strftime('%d/%m/%Y เมื่อเวลา %H:%M') rescue ''
  end

  def datetime_for_calender
    self.strftime('%Y-%m-%d %H:%M:%S') rescue ''
  end

  def to_difference_str
    time_difference = TimeDifference.between(self, Time.now).in_general
    last_updated = "ปรับปรุงล่าสุดเมื่อ "
    last_updated += "#{time_difference[:years]} ปี " unless time_difference[:years].zero?
    last_updated += "#{time_difference[:months]} เดือน " unless time_difference[:months].zero?
    last_updated += "#{time_difference[:weeks]} สัปดาห์ " unless time_difference[:weeks].zero?
    last_updated += "#{time_difference[:days]} วัน " unless time_difference[:days].zero?
    last_updated += "#{time_difference[:hours]} ชั่วโมง " unless time_difference[:hours].zero?
    last_updated += "#{time_difference[:minutes]} นาที" unless time_difference[:minutes].zero?
    last_updated += "ณ เวลานี้" if time_difference[:days].zero? && time_difference[:hours].zero? && time_difference[:minutes].zero?

    last_updated
  end

  def to_day_month
    I18n.l(self, format: '%d %B')
  end

  def to_year_month_day
    self.strftime('%Y-%m-%d')
  end

  def last_updated
    self.to_difference_str
  end
end
