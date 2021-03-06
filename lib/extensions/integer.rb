class Integer
  def to_delimited
    ActiveSupport::NumberHelper.number_to_delimited(self)
  end

  def to_covid_color
    color = "#000"

    case self
    when 1..100
      color = "#FECB2A"
    when 101..500
      color = "#FC9613"
    when 501..1000
      color = "#FE702A"
    when 1001..2500
      color = "#FC4B13"
    when 2501..5000
      color = "#FC3313"
    when 5001..7500
      color = "#FE120A"
    when 7501..12500
      color = "#FE0A37"
    when 12501..17500
      color = "#772AFE"
    when 17501..10000000
      color = "#9412F5"
    when 0
      color = "#32DA4B"
    end
  end

  def nil_or_zero?
    (self.nil? or self == 0)
  end

  def non_negative
    self.negative? ? 0 : self
  end

  def to_age_covid_color
    color = "#000"

    case self
    when 1..10
      color = "#FECB2A"
    when 11..20
      color = "#FC9613"
    when 21..30
      color = "#FE702A"
    when 31..40
      color = "#FC4B13"
    when 41..50
      color = "#FC3313"
    when 51..60
      color = "#FE120A"
    when 61..70
      color = "#FE0A37"
    when 71..80
      color = "#772AFE"
    when 81..90
      color = "#9412F5"
    when 0
      color = "#000"
    end
  end  
end