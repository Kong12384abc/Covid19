class Hospital < ApplicationRecord
  acts_as_mappable default_units: :kms,
                   default_formula: :sphere,
                   distance_field_name: :address,
                   lat_column_name: :latitude,
                   lng_column_name: :longitude

  def as_json(options = {})
    if options[:api]
      super().except('id')
    else
      super()
    end   
  end
end